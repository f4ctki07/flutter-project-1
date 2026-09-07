import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_project_1/AccountPage.dart';
import 'package:flutter_project_1/AppRouter.dart';
import 'package:flutter_project_1/AppRouter.gr.dart';
import 'package:flutter_project_1/HomePage.dart';
import 'package:flutter_project_1/NoticeBoardListPage.dart';
import 'package:flutter_project_1/gen/assets.gen.dart';
import 'package:flutter_project_1/widgets/AppNavigationBar.dart';
import 'package:flutter_project_1/widgets/LeftTitleAppHeader.dart';

import 'bloc/home_page_bloc.dart';
import 'bloc/locale_bloc.dart';
import 'di/injection.dart';
import 'i18n/strings.g.dart';

Future<void> main() async {
  await configureDependencies();

  WidgetsFlutterBinding.ensureInitialized(); // add this
  LocaleSettings.useDeviceLocale(); // and this
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<LocaleBloc>(
          create: (_) => getIt<LocaleBloc>(),
        ),
        BlocProvider<HomePageBloc>(
          create: (_) => getIt<HomePageBloc>()
            ..add(const HomePageEvent.load()),
        ),
      ],
      child: TranslationProvider(child: const MyApp())
    )
  );
}

class MyApp extends StatelessWidget {
  @Preview(
    name: '',
    brightness: Brightness.light
  )
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();

    return BlocBuilder<LocaleBloc, AppLocale>(
      builder: (context, locale) {
        return MaterialApp.router(
          routerConfig: appRouter.config(),
          locale: locale.flutterLocale,
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates:
          GlobalMaterialLocalizations.delegates,
        );
      },
    );
  }
}

@RoutePage()
class MyHomeScreen extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked 'final'.

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
    int _selectedIndex = 0;
    void _onTap(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: LeftTitleAppHeader(title: 'title', actions: _selectedIndex == 1 ? [ IconButton(onPressed: () { context.pushRoute(CreateBoardRoute()); }, icon: Assets.icons.newBoard.svg()) ] : null,),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.all(20),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: _selectedIndex == 0 ? HomePage(context) : (_selectedIndex == 1 ? NoticeBoardListPage(context) : AccountPage(context)),
      ),
      bottomNavigationBar: AppNavigationBar(selectedIndex: _selectedIndex, onTap: _onTap),
    );
  }
}

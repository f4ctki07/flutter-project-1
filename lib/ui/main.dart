import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_project_1/ui/AccountPage.dart';
import 'package:flutter_project_1/ui/AppRouter.dart';
import 'package:flutter_project_1/ui/AppRouter.gr.dart';
import 'package:flutter_project_1/ui/HomePage.dart';
import 'package:flutter_project_1/ui/NoticeBoardListPage.dart';
import 'package:flutter_project_1/gen/assets.gen.dart';
import 'package:flutter_project_1/post/domain/repository/post_repository.dart';
import 'package:flutter_project_1/test/home_page_bloc_test.dart';
import 'package:flutter_project_1/ui/widgets/AppNavigationBar.dart';
import 'package:flutter_project_1/ui/widgets/LeftTitleAppHeader.dart';

import '../bloc/home_page_bloc.dart';
import '../bloc/locale_bloc.dart';
import '../di/injection.dart';
import '../i18n/strings.g.dart';

Future<void> main() async {
  await configureDependencies();

  await getIt.unregister<PostRepository>();
  getIt.registerLazySingleton<PostRepository>(() => FakePostRepository(),);

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

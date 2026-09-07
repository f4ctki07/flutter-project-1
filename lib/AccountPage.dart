import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_1/bloc/locale_bloc.dart';
import 'package:flutter_project_1/i18n/strings.g.dart';

Widget AccountPage(BuildContext context) {
  return BlocBuilder<LocaleBloc, AppLocale>(
    builder: (context, locale) {
      return Column(
        spacing: 20,
        // TRY THIS: Invoke 'debug painting' (choose the 'Toggle Debug Paint'
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            spacing: 5,
            children: [
              Row(
                children: [
                  Text(t.account.nickname),
                  Spacer(),
                  Text(
                    'infoteam',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Text(t.account.email),
                  Spacer(),
                  Text(
                    'infoteam@gistory.me',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Text(t.language.title),
                  const Spacer(),
                  DropdownButton<AppLocale>(
                    value: locale,
                    items: [
                      DropdownMenuItem(
                        value: AppLocale.ko,
                        child: Text(t.language.korean),
                      ),
                      DropdownMenuItem(
                        value: AppLocale.en,
                        child: Text(t.language.english),
                      ),
                    ],
                    onChanged: (selectedLocale) {
                      if (selectedLocale == null) return;

                      context.read<LocaleBloc>().add(
                        LocaleChanged(selectedLocale),
                      );
                    },
                  ),
                ],
              )
            ],
          )
        ]
      );
    }
  );
}
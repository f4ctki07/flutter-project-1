import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../i18n/strings.g.dart';

sealed class LocaleEvent {
  const LocaleEvent();
}

final class LocaleChanged extends LocaleEvent {
  final AppLocale locale;

  const LocaleChanged(this.locale);
}

@injectable
class LocaleBloc extends Bloc<LocaleEvent, AppLocale> {
  LocaleBloc(): super(LocaleSettings.currentLocale) {
    on<LocaleChanged>(_onLocaleChanged);
  }

  Future<void> _onLocaleChanged(LocaleChanged event, Emitter<AppLocale> emit) async {
    await LocaleSettings.setLocale(event.locale);
    emit(event.locale);
  }
}
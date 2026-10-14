import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// `null` means "follow the device language".
class LocaleCubit extends Cubit<Locale?> {
  LocaleCubit() : super(null);

  void setLocale(Locale locale) => emit(locale);
}

import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Values loaded from the `.env` asset (see `.env.example`).
abstract final class Env {
  static String get supabaseUrl => _require('SUPABASE_URL');

  static String get supabaseAnonKey => _require('SUPABASE_ANON_KEY');

  static String _require(String key) {
    final value = dotenv.maybeGet(key);
    if (value == null || value.isEmpty) {
      throw StateError('Missing "$key" in .env');
    }
    return value;
  }
}

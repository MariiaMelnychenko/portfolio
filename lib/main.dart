import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio/core/constants/app_colors.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/config/env.dart';
import 'core/di/injection.dart';
import 'core/locale/locale_cubit.dart';
import 'core/navigation/app_navigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Supabase.initialize(
    url: Env.supabaseUrl,
    publishableKey: Env.supabaseAnonKey,
  );
  configureDependencies();
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LocaleCubit(),
      child: BlocBuilder<LocaleCubit, Locale?>(
        builder: (context, locale) {
          return MaterialApp.router(
            onGenerateTitle: (context) => S.of(context).fullName,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: AppColors.yellow),
              scaffoldBackgroundColor: AppColors.white,
            ),
            locale: locale,
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            routerConfig: appRouter,

            builder: (context, child) {
              return Container(
                color: Colors.grey[200],
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(kIsWeb ? 16.0 : 0.0),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 450),
                      child: child,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

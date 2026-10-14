import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/constants/app_colors.dart';
import 'package:portfolio/generated/l10n.dart';
import '../../core/locale/locale_cubit.dart';

class LanguageSwitch extends StatelessWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final current = Localizations.localeOf(context).languageCode;
    final locales = S.delegate.supportedLocales;
    final currentIndex = locales.indexWhere((l) => l.languageCode == current);
    const double width = 90.0;
    const double height = 35.0;

    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.bg,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadow,
            offset: Offset(3, 3),
            blurRadius: 5,
          ),
          BoxShadow(
            color: AppColors.white,
            offset: Offset(-3, -3),
            blurRadius: 5,
          ),
        ],
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            alignment: currentIndex == 0
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: FractionallySizedBox(
              widthFactor: 0.5,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.yellow,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.yellow.withValues(alpha: 0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Row(
            children: locales.map((locale) {
              final isActive = locale.languageCode == current;
              return Expanded(
                child: GestureDetector(
                  onTap: () => context.read<LocaleCubit>().setLocale(locale),
                  behavior: HitTestBehavior.opaque,
                  child: Center(
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 250),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: isActive
                            ? FontWeight.w700
                            : FontWeight.w500,
                        color: isActive
                            ? AppColors.black
                            : AppColors.black.withValues(alpha: 0.6),
                        fontFamily: 'Roboto',
                      ),
                      child: Text(locale.languageCode.toUpperCase()),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

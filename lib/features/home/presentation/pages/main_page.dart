import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/constants/app_colors.dart';
import 'package:portfolio/core/constants/app_skills.dart';
import 'package:portfolio/features/home/presentation/cubit/home_cubit.dart';
import 'package:portfolio/features/home/presentation/widgets/apps_module.dart';
import 'package:portfolio/features/home/presentation/widgets/header_module.dart';
import 'package:portfolio/features/home/presentation/widgets/main_buttons.dart';
import 'package:portfolio/features/home/presentation/widgets/skills_module.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/shared/widgets/language_switch.dart';
import 'package:portfolio/shared/widgets/load_error_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return switch (state) {
              HomeLoading() ||
              HomeInitial() => const Center(child: CircularProgressIndicator()),
              HomeError() => LoadErrorView(
                onRetry: () => context.read<HomeCubit>().load(),
              ),
              HomeLoaded(:final apps) => SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10n.portfolio,
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        LanguageSwitch(),
                      ],
                    ),
                    const SizedBox(height: 10),
                    HeaderModule(l10n: l10n),
                    const SizedBox(height: 28),
                    SkillsModule(l10n: l10n, skills: AppSkills.all),
                    const SizedBox(height: 28),
                    AppsModule(l10n: l10n, apps: apps),
                    const SizedBox(height: 32),
                    MainButtons(l10n: l10n),
                  ],
                ),
              ),
            };
          },
        ),
      ),
    );
  }
}

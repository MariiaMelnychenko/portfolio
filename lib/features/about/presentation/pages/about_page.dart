import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app_colors.dart';
import 'package:portfolio/features/about/presentation/widgets/bullet_item_widget.dart';
import 'package:portfolio/features/about/presentation/widgets/experience_item_widget.dart';
import 'package:portfolio/generated/l10n.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.black),
        title: Text(
          l10n.aboutMe,
          style: const TextStyle(
            color: AppColors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          clipBehavior: Clip.none,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.bioSummary,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 32),

              // Блок Досвіду
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.work_outline,
                        size: 28,
                        color: AppColors.yellow,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        l10n.experience,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    l10n.experienceTotal,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                  const Divider(height: 24, thickness: 1),
                  ExperienceItem(
                    title: l10n.job1Title,
                    subtitle: l10n.job1Company,
                  ),
                  const SizedBox(height: 16),
                  ExperienceItem(
                    title: l10n.job2Title,
                    subtitle: l10n.job2Company,
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Блок Освіти
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.school_outlined,
                        size: 28,
                        color: AppColors.yellow,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        l10n.education,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ExperienceItem(
                    title: l10n.eduDegree,
                    subtitle: l10n.eduUniversity,
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Блок Мов
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.language_outlined,
                        size: 28,
                        color: AppColors.yellow,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        l10n.languages,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  BulletItem(text: l10n.langEnglish),
                  const SizedBox(height: 8),
                  BulletItem(text: l10n.langUkrainian),
                ],
              ),
              const SizedBox(height: 32),

              // Блок Інтересів
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.favorite_outline,
                        size: 28,
                        color: AppColors.yellow,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        l10n.interests,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  BulletItem(text: l10n.interestFitness),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

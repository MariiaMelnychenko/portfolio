import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_skills.dart';

class MySkillsPage extends StatelessWidget {
  const MySkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    const skills = AppSkills.all;

    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        title: Text(l10n.skills),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: skills.map((skill) {
            return Chip(
              label: Text(
                skill.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              backgroundColor: AppColors.bg,
              shape: const StadiumBorder(
                side: BorderSide(color: AppColors.yellow, width: 2),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

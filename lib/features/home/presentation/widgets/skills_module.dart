import 'package:flutter/material.dart';
import 'package:portfolio/core/navigation/app_navigation.dart';
import 'package:portfolio/features/skills/domain/skill_item.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/shared/widgets/custom_container.dart';

class SkillsModule extends StatelessWidget {
  const SkillsModule({super.key, required this.l10n, required this.skills});

  final S l10n;
  final List<SkillItem> skills;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.skills,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            GestureDetector(
              onTap: () => const SkillsRouteData().push(context),
              child: Text(
                l10n.details,
                style: const TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 90,
          child: skills.isEmpty
              ? Center(child: Text(l10n.emptyList))
              : ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 15,
                  ),
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  itemCount: skills.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 20),
                  itemBuilder: (context, index) {
                    final skill = skills[index];
                    return CustomContainerPressed(title: skill.title);
                  },
                ),
        ),
      ],
    );
  }
}

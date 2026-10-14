import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/social_links.dart';
import 'package:portfolio/core/utils/open_path.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/shared/widgets/custom_container.dart';

class MainButtons extends StatelessWidget {
  const MainButtons({super.key, required this.l10n});

  final S l10n;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(minWidth: 100),
          child: CustomContainerPressed(
            title: l10n.github,
            onTap: () => openPath(context, SocialLinks.gitHub),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(minWidth: 100),
          child: CustomContainerPressed(
            title: l10n.cv,
            onTap: () => openPath(context, SocialLinks.cv),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(minWidth: 100),
          child: CustomContainerPressed(
            title: l10n.linkedin,
            onTap: () => openPath(context, SocialLinks.linkedIn),
          ),
        ),
      ],
    );
  }
}

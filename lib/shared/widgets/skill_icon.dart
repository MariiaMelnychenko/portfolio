import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../features/skills/domain/skill_item.dart';

class SkillIcon extends StatelessWidget {
  const SkillIcon({super.key, required this.skill, this.size = 72});

  final SkillItem skill;
  final double size;

  @override
  Widget build(BuildContext context) {
    final asset = skill.iconAsset;
    if (asset == null) {
      return Icon(Icons.code_rounded, size: size);
    }
    if (asset.toLowerCase().endsWith('.svg')) {
      return SvgPicture.asset(asset, width: size, height: size);
    }
    return Image.asset(asset, width: size, height: size, fit: BoxFit.contain);
  }
}

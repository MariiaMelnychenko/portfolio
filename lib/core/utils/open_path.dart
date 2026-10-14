import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openPath(BuildContext context, String path) async {
  final trimmed = path.trim();
  if (trimmed.isEmpty) {
    return;
  }
  if (trimmed.startsWith('/')) {
    context.go(trimmed);
    return;
  }
  final uri = Uri.tryParse(trimmed);
  if (uri == null) {
    return;
  }
  await launchUrl(uri, mode: LaunchMode.externalApplication);
}

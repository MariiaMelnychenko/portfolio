import 'package:flutter/material.dart';

import '../../../../l10n/app_localizations.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(l10n.fullName),
            Text(l10n.flutterDeveloper),
            Text(l10n.yearsOfExperience),
          ],
        ),
      ),
    );
  }
}

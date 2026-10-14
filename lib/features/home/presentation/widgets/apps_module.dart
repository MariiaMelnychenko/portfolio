import 'package:flutter/material.dart';
import 'package:portfolio/core/navigation/app_navigation.dart';
import 'package:portfolio/features/apps/domain/app_item.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/shared/widgets/custom_container.dart';
import 'package:portfolio/shared/widgets/network_icon.dart';

class AppsModule extends StatelessWidget {
  const AppsModule({super.key, required this.l10n, required this.apps});

  final S l10n;
  final List<AppItem> apps;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.apps,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            GestureDetector(
              onTap: () => const AppsRouteData().push(context),
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
          height: 220,
          child: apps.isEmpty
              ? Center(child: Text(l10n.emptyList))
              : ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 15,
                  ),
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  itemCount: apps.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 20),
                  itemBuilder: (context, index) {
                    final app = apps[index];
                    return SizedBox(
                      width: 160,
                      child: CustomContainerPressed(
                        title: app.title,
                        icon: NetworkIcon(url: app.icon),
                        onTap: () =>
                            AppDetailsRouteData(id: app.id).push(context),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}

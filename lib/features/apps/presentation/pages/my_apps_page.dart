import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/generated/l10n.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/navigation/app_navigation.dart';
import '../../../../shared/widgets/custom_container.dart';
import '../../../../shared/widgets/load_error_view.dart';
import '../../../../shared/widgets/network_icon.dart';
import '../cubit/apps_cubit.dart';

class MyAppsPage extends StatelessWidget {
  const MyAppsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(backgroundColor: AppColors.bg, title: Text(l10n.apps)),
      body: BlocBuilder<AppsCubit, AppsState>(
        builder: (context, state) {
          return switch (state) {
            AppsInitial() ||
            AppsLoading() => const Center(child: CircularProgressIndicator()),
            AppsError() => LoadErrorView(
              onRetry: () => context.read<AppsCubit>().load(),
            ),
            AppsLoaded(:final apps) when apps.isEmpty => Center(
              child: Text(l10n.emptyList),
            ),
            AppsLoaded(:final apps) => GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              itemCount: apps.length,
              itemBuilder: (context, index) {
                final app = apps[index];
                return CustomContainerPressed(
                  width: double.infinity,
                  height: double.infinity,
                  title: app.title,
                  icon: NetworkIcon(url: app.icon),
                  onTap: () => AppDetailsRouteData(id: app.id).push(context),
                );
              },
            ),
          };
        },
      ),
    );
  }
}

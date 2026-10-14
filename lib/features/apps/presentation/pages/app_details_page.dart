import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/shared/widgets/custom_container.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/open_path.dart';
import '../../../../shared/widgets/load_error_view.dart';
import '../../../../shared/widgets/network_icon.dart';
import '../../domain/app_item.dart';
import '../cubit/app_details_cubit.dart';

class AppDetailsPage extends StatelessWidget {
  const AppDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(backgroundColor: AppColors.bg),
      body: BlocBuilder<AppDetailsCubit, AppDetailsState>(
        builder: (context, state) {
          return switch (state) {
            AppDetailsLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            AppDetailsError() => LoadErrorView(
              onRetry: () => context.read<AppDetailsCubit>().load(),
            ),
            AppDetailsLoaded(:final app) => _AppDetailsBody(app: app),
          };
        },
      ),
    );
  }
}

class _AppDetailsBody extends StatelessWidget {
  const _AppDetailsBody({required this.app});

  final AppItem app;

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final description = app.description(
      Localizations.localeOf(context).languageCode,
    );
    const sectionTitleStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
    );

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: NetworkIcon(url: app.icon, size: 88),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  app.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          if (description.isNotEmpty) ...[
            const SizedBox(height: 20),
            Text(description, style: const TextStyle(fontSize: 16)),
          ],
          if (app.techStack.isNotEmpty) ...[
            const SizedBox(height: 24),
            Text(l10n.techStack, style: sectionTitleStyle),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final tech in app.techStack)
                  Chip(
                    label: Text(tech),
                    backgroundColor: AppColors.bg,
                    shape: const StadiumBorder(),
                  ),
              ],
            ),
          ],
          if (app.screenshots.isNotEmpty) ...[
            const SizedBox(height: 24),
            Text(l10n.screenshots, style: sectionTitleStyle),
            const SizedBox(height: 10),
            SizedBox(
              height: 420,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: app.screenshots.length,
                separatorBuilder: (context, index) => const SizedBox(width: 12),
                itemBuilder: (context, index) => ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    app.screenshots[index],
                    fit: BoxFit.contain,
                    errorBuilder: (_, _, _) => const SizedBox(
                      width: 200,
                      child: Icon(Icons.broken_image_outlined, size: 48),
                    ),
                  ),
                ),
              ),
            ),
          ],
          if (app.links.isNotEmpty) ...[
            const SizedBox(height: 24),
            Text(l10n.links, style: sectionTitleStyle),
            const SizedBox(height: 10),
            Wrap(
              spacing: 20,
              runSpacing: 8,
              children: [
                for (final link in app.links)
                  CustomContainerPressed(
                    onTap: () => openPath(context, link.url),
                    // icon: const Icon(Icons.open_in_new, size: 18),
                    title: link.label,
                  ),
              ],
            ),
            SizedBox(height: 24),
          ],
        ],
      ),
    );
  }
}

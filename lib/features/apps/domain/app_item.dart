class AppLink {
  const AppLink({required this.label, required this.url});

  final String label;
  final String url;
}

class AppItem {
  const AppItem({
    required this.id,
    required this.title,
    required this.descriptionEn,
    required this.descriptionUk,
    required this.techStack,
    required this.icon,
    required this.screenshots,
    required this.links,
    required this.sortOrder,
  });

  final int id;
  final String title;
  final String descriptionEn;
  final String descriptionUk;
  final List<String> techStack;
  final String icon;
  final List<String> screenshots;
  final List<AppLink> links;
  final int? sortOrder;

  String description(String languageCode) {
    final primary = languageCode == 'uk' ? descriptionUk : descriptionEn;
    if (primary.isNotEmpty) return primary;
    return languageCode == 'uk' ? descriptionEn : descriptionUk;
  }

  factory AppItem.fromMap(Map<String, dynamic> map) {
    return AppItem(
      id: (map['id'] as num).toInt(),
      title: (map['title'] ?? '') as String,
      descriptionEn: (map['description_en'] ?? '') as String,
      descriptionUk: (map['description_uk'] ?? '') as String,
      techStack: _stringList(map['tech_stack']),
      icon: (map['icon'] ?? '') as String,
      screenshots: _stringList(map['screenshots']),
      links: _links(map['links']),
      sortOrder: (map['sort_order'] as num?)?.toInt(),
    );
  }

  static List<String> _stringList(Object? value) {
    if (value is! List) return const [];
    return value.whereType<String>().where((e) => e.isNotEmpty).toList();
  }

  static List<AppLink> _links(Object? value) {
    if (value is Map) {
      return [
        for (final entry in value.entries)
          if (entry.value is String && (entry.value as String).isNotEmpty)
            AppLink(label: '${entry.key}', url: entry.value as String),
      ];
    }
    if (value is List) {
      return [
        for (final item in value.whereType<Map>())
          if (item['url'] is String)
            AppLink(
              label:
                  '${item['title'] ?? item['label'] ?? item['name'] ?? item['url']}',
              url: item['url'] as String,
            ),
      ];
    }
    return const [];
  }
}

import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../core/di/injection.dart';
import '../domain/app_item.dart';

abstract class AppsRepository {
  Future<List<AppItem>> fetchApps({int? limit});

  Future<AppItem> fetchApp(int id);
}

class SupabaseAppsRepository implements AppsRepository {
  static const _table = 'apps';

  @override
  Future<List<AppItem>> fetchApps({int? limit}) async {
    final query = sl<SupabaseClient>()
        .from(_table)
        .select()
        .order('sort_order', ascending: true, nullsFirst: false)
        .order('id', ascending: true);
    final data = await (limit == null ? query : query.limit(limit));
    return data.map(AppItem.fromMap).toList();
  }

  @override
  Future<AppItem> fetchApp(int id) async {
    final data = await sl<SupabaseClient>()
        .from(_table)
        .select()
        .eq('id', id)
        .single();
    return AppItem.fromMap(data);
  }
}

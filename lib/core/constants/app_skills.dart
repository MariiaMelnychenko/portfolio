import '../../features/skills/domain/skill_item.dart';

abstract final class AppSkills {
  static const List<SkillItem> all = [
    // Core & Architecture
    SkillItem(title: 'Flutter'),
    SkillItem(title: 'Dart'),
    SkillItem(title: 'OOP'),
    SkillItem(title: 'SOLID Principles'),
    SkillItem(title: 'BLoC / Cubit'),
    SkillItem(title: 'Clean Architecture'),
    SkillItem(title: 'GetIt'),
    SkillItem(title: 'GoRouter'),

    // Network & Reactive
    SkillItem(title: 'REST API'),
    SkillItem(title: 'WebSockets'),
    SkillItem(title: 'Dio'),
    SkillItem(title: 'RxDart'),

    // Backend & Cloud
    SkillItem(title: 'Firebase'),
    SkillItem(title: 'Supabase'),

    // Storage
    SkillItem(title: 'Hive'),
    SkillItem(title: 'SQLite'),
    SkillItem(title: 'Secure Storage'),

    // Monetization & Payments
    SkillItem(title: 'RevenueCat (IAP)'),
    SkillItem(title: 'Stripe'),
    SkillItem(title: 'LiqPay'),

    // Hardware, Native & AI (Дуже круті фічі для мідла)
    SkillItem(title: 'Local Auth (Biometrics)'),
    SkillItem(title: 'FFmpeg & Audio Processing'),
    SkillItem(title: 'OpenAI API & Deepgram'),
    SkillItem(title: 'Google Maps'),
    SkillItem(title: 'QR Scanner'),

    // Testing
    SkillItem(title: 'Patrol (E2E Testing)'),
    SkillItem(title: 'Unit Testing & Mocktail'),

    // Analytics, Monitoring & DevOps
    SkillItem(title: 'CI/CD'),
    SkillItem(title: 'Sentry'),
    SkillItem(title: 'AppsFlyer & Amplitude'),
    SkillItem(title: 'Git'),
    SkillItem(title: 'App Store Connect'),
    SkillItem(title: 'Google Play Console'),
  ];
}

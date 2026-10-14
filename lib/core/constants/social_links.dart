import '../config/env.dart';

abstract final class SocialLinks {
  static const String gitHub = 'https://github.com/MariiaMelnychenko';

  static const String linkedIn =
      'https://www.linkedin.com/in/mariia-melnychenko-27686b2bb';

  static String get cv =>
      '${Env.supabaseUrl}/storage/v1/object/public/portfolio/portfolio_assets/cv.pdf?download=cv.pdf';
}

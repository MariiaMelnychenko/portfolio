import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/core/di/injection.dart';
import 'package:portfolio/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    sl.reset();
    configureDependencies();
  });

  testWidgets('renders PortfolioApp', (WidgetTester tester) async {
    await tester.pumpWidget(const PortfolioApp());
    expect(find.byType(PortfolioApp), findsOneWidget);
  });
}

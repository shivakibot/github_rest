import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../test/widget/home_test.dart' as home;

void main() {
  // init
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('normally test', () {
    home.main();
  });
}
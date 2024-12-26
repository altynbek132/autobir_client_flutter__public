import 'package:autobir/DI/locator.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injection.config.dart';

@injectableInit
Future<void> setupLocator() async => await locator.init();

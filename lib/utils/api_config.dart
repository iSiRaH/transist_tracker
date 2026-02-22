import 'package:flutter/foundation.dart';

class ApiConfig {
  const ApiConfig._();

  static String get _host {
    if (kIsWeb) {
      return 'http://localhost:3000';
    }

    if (defaultTargetPlatform == TargetPlatform.android) {
      return 'http://10.0.2.2:3000';
    }

    return 'http://localhost:3000';
  }

  static String get authBaseUrl => '$_host/api/v1/auth';
}

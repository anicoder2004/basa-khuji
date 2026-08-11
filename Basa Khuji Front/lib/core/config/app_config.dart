class AppConfig {
  // Change this to your Fly.io URL after deployment
  // For Android emulator: http://10.0.2.2:8080
  // For iOS simulator: http://localhost:8080
  // For production: https://basa-khuji-back.fly.dev
  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://10.0.2.2:8080',
  );

  static const String apiPath = '/api';

  static String get fullApiUrl => '$apiBaseUrl$apiPath';

  // Location endpoints
  static String get locationBase => '$fullApiUrl/v1/basakhuji/locations';
  static String get divisionsUrl => '$locationBase/divisions';
  static String get districtsUrl => '$locationBase/districts';
  static String get thanasUrl => '$locationBase/thanas';
  static String get areasUrl => '$locationBase/areas';
}
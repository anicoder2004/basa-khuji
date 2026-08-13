/// Central app configuration.
///
/// `apiBaseUrl` is the host (no trailing context path). The backend (Spring
/// Boot) serves every endpoint under the `/api` context-path, so Dart code
/// should always use [fullApiUrl] as the Dio `baseUrl`.
class AppConfig {
  // Change this to your Fly.io URL after deployment:
  //   Production:   https://basa-khuji-back.fly.dev
  //   Android emu:  http://10.0.2.2:8080
  //   iOS sim:      http://localhost:8080
  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://10.0.2.2:8080',
  );

  /// Spring Boot `server.servlet.context-path`.
  static const String apiPath = '/api';

  /// Full base URL used as Dio `baseUrl`, e.g. `http://10.0.2.2:8080/api`.
  static String get fullApiUrl => '$apiBaseUrl$apiPath';
}
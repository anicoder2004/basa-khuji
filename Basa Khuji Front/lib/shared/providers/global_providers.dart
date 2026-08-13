import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Theme mode provider (light/dark/system)
final themeModeProvider = StateNotifierProvider<ThemeModeNotifier, ThemeMode>((ref) {
  return ThemeModeNotifier();
});

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  static const _key = 'theme_mode';

  ThemeModeNotifier() : super(ThemeMode.system) {
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final index = prefs.getInt(_key) ?? ThemeMode.system.index;
    state = ThemeMode.values[index];
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    state = mode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_key, mode.index);
  }
}

/// Locale provider (language)
final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  return LocaleNotifier();
});

class LocaleNotifier extends StateNotifier<Locale> {
  static const _key = 'locale_language_code';

  LocaleNotifier() : super(const Locale('en')) {
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString(_key) ?? 'en';
    state = Locale(languageCode);
  }

  Future<void> setLocale(Locale locale) async {
    state = locale;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, locale.languageCode);
  }

  bool get isBengali => state.languageCode == 'bn';
  bool get isEnglish => state.languageCode == 'en';
}

/// Authentication state
enum AuthStatus { initial, authenticated, unauthenticated, loading }

@immutable
class AuthState {
  final AuthStatus status;
  final String? token;
  final String? userId;
  final String? error;

  const AuthState({
    this.status = AuthStatus.initial,
    this.token,
    this.userId,
    this.error,
  });

  AuthState copyWith({
    AuthStatus? status,
    String? token,
    String? userId,
    String? error,
  }) {
    return AuthState(
      status: status ?? this.status,
      token: token ?? this.token,
      userId: userId ?? this.userId,
      error: error ?? this.error,
    );
  }

  bool get isAuthenticated => status == AuthStatus.authenticated;
  bool get isLoading => status == AuthStatus.loading;
}

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  return AuthStateNotifier();
});

class AuthStateNotifier extends StateNotifier<AuthState> {
  static const _tokenKey = 'auth_token';
  static const _userIdKey = 'auth_user_id';

  AuthStateNotifier() : super(const AuthState()) {
    _load();
  }

  Future<void> _load() async {
    state = state.copyWith(status: AuthStatus.loading);
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(_tokenKey);
    final userId = prefs.getString(_userIdKey);
    if (token != null && userId != null) {
      state = state.copyWith(
        status: AuthStatus.authenticated,
        token: token,
        userId: userId,
      );
    } else {
      state = state.copyWith(status: AuthStatus.unauthenticated);
    }
  }

  Future<void> login(String token, String userId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, token);
    await prefs.setString(_userIdKey, userId);
    state = state.copyWith(
      status: AuthStatus.authenticated,
      token: token,
      userId: userId,
      error: null,
    );
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tokenKey);
    await prefs.remove(_userIdKey);
    state = const AuthState(status: AuthStatus.unauthenticated);
  }

  Future<void> setError(String error) async {
    state = state.copyWith(status: AuthStatus.unauthenticated, error: error);
  }
}
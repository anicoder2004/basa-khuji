import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../l10n/app_localizations.dart';
import '../core/theme/app_spacing.dart';
import '../core/theme/app_typography.dart';
import '../shared/providers/global_providers.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _progressAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _controller.repeat(reverse: true);
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    // Simulate initialization (theme, auth, prefetch)
    await Future.wait([
      Future.delayed(const Duration(milliseconds: 500)),
      _loadTheme(),
      _checkAuth(),
    ]);

    if (mounted) {
      _navigateNext();
    }
  }

  Future<void> _loadTheme() async {
    // Theme is loaded via providers
    await Future.delayed(const Duration(milliseconds: 100));
  }

  Future<void> _checkAuth() async {
    // Auth state is loaded in the provider constructor
    await Future.delayed(const Duration(milliseconds: 100));
  }

  void _navigateNext() {
    final authState = ref.read(authStateProvider);
    if (authState.isAuthenticated) {
      context.go('/');
    } else {
      // Check if onboarding completed
      context.go('/onboarding');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo placeholder
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Icon(
                Icons.home_outlined,
                size: 60,
                color: theme.colorScheme.primary,
              ),
            ),
            SizedBox(height: AppSpacing.xl),
            Text(
              l10n.appTitle,
              style: AppTypography.appBarTitle().copyWith(
                color: theme.colorScheme.onPrimary,
                fontSize: 28,
              ),
            ),
            SizedBox(height: AppSpacing.xxxl),
            SizedBox(
              width: 200,
              child: AnimatedBuilder(
                animation: _progressAnimation,
                builder: (context, child) => LinearProgressIndicator(
                  value: _progressAnimation.value,
                  backgroundColor: theme.colorScheme.onPrimary.withOpacity(0.3),
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.onPrimary,
                  ),
                  minHeight: 6,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
            SizedBox(height: AppSpacing.lg),
            Text(
              l10n.splashLoading,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onPrimary.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
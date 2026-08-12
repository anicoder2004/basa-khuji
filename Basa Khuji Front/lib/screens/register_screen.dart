import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../l10n/app_localizations.dart';
import '../core/theme/app_spacing.dart';
import '../shared/providers/global_providers.dart';
import '../shared/widgets/widgets.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.registerTitle)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(AppSpacing.md),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: AppSpacing.xl),
                Text(
                  l10n.registerTitle,
                  style: theme.textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSpacing.lg),
                AppTextField(
                  controller: _nameController,
                  label: l10n.registerName,
                  prefixIcon: Icons.person_outlined,
                  validator: (v) => v!.isEmpty ? l10n.validationRequired : null,
                ),
                SizedBox(height: AppSpacing.md),
                AppTextField(
                  controller: _emailController,
                  label: l10n.registerEmail,
                  prefixIcon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                  validator: (v) => v!.isEmpty ? l10n.validationRequired :
                    v.contains('@') ? null : l10n.validationInvalidEmail,
                ),
                SizedBox(height: AppSpacing.md),
                AppTextField(
                  controller: _phoneController,
                  label: l10n.registerPhone,
                  prefixIcon: Icons.phone_outlined,
                  keyboardType: TextInputType.phone,
                  validator: (v) => v!.isEmpty ? l10n.validationRequired :
                    v.length >= 11 ? null : l10n.validationInvalidPhone,
                ),
                SizedBox(height: AppSpacing.md),
                AppTextField(
                  controller: _passwordController,
                  label: l10n.registerPassword,
                  prefixIcon: Icons.lock_outlined,
                  obscureText: true,
                  showObscureToggle: true,
                  validator: (v) => v!.isEmpty ? l10n.validationRequired :
                    v.length >= 6 ? null : l10n.validationPasswordMinLength,
                ),
                SizedBox(height: AppSpacing.md),
                AppTextField(
                  controller: _confirmPasswordController,
                  label: l10n.registerConfirmPassword,
                  prefixIcon: Icons.lock_outlined,
                  obscureText: true,
                  showObscureToggle: true,
                  validator: (v) => v != _passwordController.text
                    ? l10n.validationPasswordMismatch : null,
                ),
                SizedBox(height: AppSpacing.lg),
                AppButton(
                  label: l10n.registerButton,
                  onPressed: _submit,
                ),
                SizedBox(height: AppSpacing.md),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(l10n.registerHasAccount),
                    TextButton(
                      onPressed: () => context.go('/login'),
                      child: Text(l10n.registerLogin),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      ref.read(authStateProvider.notifier).login(
        'mock_token_${DateTime.now().millisecondsSinceEpoch}',
        'user_1',
      );
      context.go('/');
    }
  }
}
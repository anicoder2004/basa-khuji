import 'package:flutter/material.dart';

import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_theme_extension.dart';
import '../../core/theme/app_typography.dart';

enum AppButtonVariant { filled, outlined, text }

enum AppButtonSize { small, medium, large }

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final AppButtonSize size;
  final IconData? icon;
  final bool fullWidth;
  final bool loading;

  const AppButton({
    super.key,
    required this.label,
    this.onPressed,
    this.variant = AppButtonVariant.filled,
    this.size = AppButtonSize.medium,
    this.icon,
    this.fullWidth = true,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final enabled = onPressed != null && !loading;

    final height = switch (size) {
      AppButtonSize.small => AppSpacing.buttonHeightSM,
      AppButtonSize.medium => AppSpacing.buttonHeight,
      AppButtonSize.large => AppSpacing.buttonHeightLG,
    };

    final textStyle = switch (size) {
      AppButtonSize.small => AppTypography.labelMedium(),
      AppButtonSize.medium => AppTypography.buttonText(),
      AppButtonSize.large => AppTypography.labelLarge(),
    };

    final shape = RoundedRectangleBorder(
      borderRadius: context.appTheme.buttonRadius,
    );

    final minimumSize = Size(
      fullWidth ? double.infinity : 0,
      height,
    );

    final Widget child = switch (variant) {
      AppButtonVariant.filled => FilledButton(
        onPressed: enabled ? onPressed : null,
        style: FilledButton.styleFrom(
          minimumSize: minimumSize,
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
          shape: shape,
          textStyle: textStyle,
        ),
        child: _buildContent(theme),
      ),
      AppButtonVariant.outlined => OutlinedButton(
        onPressed: enabled ? onPressed : null,
        style: OutlinedButton.styleFrom(
          minimumSize: minimumSize,
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
          shape: shape,
          textStyle: textStyle,
        ),
        child: _buildContent(theme),
      ),
      AppButtonVariant.text => TextButton(
        onPressed: enabled ? onPressed : null,
        style: TextButton.styleFrom(
          minimumSize: minimumSize,
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
          shape: shape,
          textStyle: textStyle,
        ),
        child: _buildContent(theme),
      ),
    };

    return child;
  }

  Widget _buildContent(ThemeData theme) {
    if (loading) {
      final Color spinnerColor = switch (variant) {
        AppButtonVariant.filled => theme.colorScheme.onPrimary,
        AppButtonVariant.outlined || AppButtonVariant.text =>
          theme.colorScheme.primary,
      };
      return SizedBox(
        height: AppSpacing.iconSM,
        width: AppSpacing.iconSM,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(spinnerColor),
        ),
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) ...[
          Icon(icon, size: AppSpacing.iconMD),
          const SizedBox(width: AppSpacing.xs),
        ],
        Text(label),
      ],
    );
  }
}
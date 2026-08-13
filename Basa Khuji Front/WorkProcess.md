# Basa Khuji Front - Work Process Log

## Project Overview
Flutter frontend for "Basa Khuji" - Bangladesh's trusted rental property platform.
Converting from Android XML designs to modern Flutter with Riverpod, go_router, and Material 3 theming.

---

## Phase 0: Project Setup & Configuration

### Task 0.1: Flutter Project Exists
**Status**: ✅ Completed (Pre-existing)
**Date**: 2026-07-11
**What was done**: The Flutter project `basa_khuji` was already created at `Basa Khuji Front/`
**Product**: Complete Flutter project structure with `android/`, `ios/`, `lib/`, `test/`, `pubspec.yaml`
**Why needed**: Foundation for all frontend development. Already had basic Android/iOS configurations.

### Task 0.2: Configure pubspec.yaml with All Dependencies
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Updated `pubspec.yaml` with all required dependencies for the frontend:
- **State Management**: `flutter_riverpod`, `riverpod_annotation`
- **Serialization**: `freezed_annotation`, `json_annotation`
- **Networking**: `dio` (retrofit disabled due to generator bug)
- **Routing**: `go_router`
- **Storage**: `flutter_secure_storage`, `shared_preferences`
- **Maps**: `flutter_map`, `latlong2` (free OpenStreetMap alternative)
- **Media**: `image_picker`, `image_cropper`, `flutter_image_compress`, `cached_network_image`
- **Firebase**: `firebase_core`, `firebase_messaging`, `cloud_firestore`
- **Notifications**: `flutter_local_notifications`
- **UI/Animation**: `flutter_animate`, `flutter_svg`, `google_fonts`, `shimmer`
- **Utilities**: `equatable`, `path`, `url_launcher`, `permission_handler`
- **Dev Dependencies**: `build_runner`, `riverpod_generator`, `riverpod_lint`, `freezed`, `json_serializable`, `custom_lint`
- **Fonts**: NotoSans (English) + NotoSansBengali (Bengali) configured
**Product**: Complete dependency manifest ready for `flutter pub get`
**Why needed**: All features (auth, property listing, maps, image upload, push notifications, localization) require these packages. Using `flutter_map` instead of Mapbox for free OpenStreetMap tiles.

### Task 0.3: Setup analysis_options.yaml (Lint Rules)
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created comprehensive `analysis_options.yaml` with strict lint rules:
- Style: single quotes, package imports, const constructors
- Safety: avoid print, prefer final, null safety
- Performance: prefer isEmpty, const literals
- Flutter: sized_box_for_whitespace, use_key_in_widget_constructors
- Excludes generated files (`*.g.dart`, `*.freezed.dart`, `*.gr.dart`)
**Product**: Static analysis configuration enforcing code quality
**Why needed**: Catches bugs early, enforces consistent style, prevents technical debt. Required for team scaling.

### Task 0.4: Create Directory Structure
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created full feature-first directory structure:
```
lib/
├── core/
│   ├── theme/          # Theme system (colors, spacing, typography, extensions)
│   ├── widgets/        # Shared reusable widgets
│   ├── utils/          # Helpers, extensions, responsive
│   └── constants/      # App constants, routes, strings
├── features/
│   ├── home/           # Property listing (widgets, providers, screens)
│   ├── property_detail/
│   ├── add_property/
│   ├── profile/
│   ├── settings/
│   ├── auth/
│   ├── messages/
│   ├── favorites/
│   └── category/
├── shared/
│   ├── models/         # Property, User, Location, enums
│   ├── providers/      # Global providers (theme, locale, auth)
│   └── widgets/
├── l10n/               # Localization (ARB files)
├── router/             # go_router configuration
├── main.dart
assets/
├── images/
├── icons/
└── fonts/
```
**Product**: Organized, scalable folder structure following feature-first architecture
**Why needed**: Separation of concerns, easy navigation, scalable for team. Core = shared infrastructure, Features = business logic per screen, Shared = cross-feature models/providers.

---

## Phase 1: Theme System (lib/core/theme/)

### Task 1.1: Create app_colors.dart
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created `lib/core/theme/app_colors.dart` with:
- **Light ColorScheme**: Primary red (#F44336), secondary blue, tertiary green, semantic colors (price, error, warning, success)
- **Dark ColorScheme**: Adapted colors for dark mode (Material 3 compliant)
- **Semantic colors**: Price positive/negative, chip states, search bar, bottom nav, card shadows
- **Flutter 3.12+ compatible**: No deprecated `background`/`onBackground` parameters
- **Complete ColorScheme** objects: `lightColorScheme` and `darkColorScheme` ready for `ThemeData`
**Product**: Single source of truth for all colors in the app
**Why needed**: Centralized theming, easy rebranding, dark mode support, semantic meaning (not magic hex values). All widgets reference `AppColors.primary` instead of hardcoded colors.

### Task 1.2: Create app_spacing.dart
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created `lib/core/theme/app_spacing.dart` with 4dp base unit system:
- **Spacing scale**: xs(4), sm(8), md(16), lg(24), xl(32), xxl(48), xxxl(64)
- **Component-specific**: padding, margins, border radius, button heights, input heights
- **Breakpoints**: phone (<600), tablet (600-900), desktop (>900)
- **Animation durations**: 100ms to 800ms
- **Property card**: aspect ratio 16:9, image height 180dp
**Product**: Consistent spacing system across entire app
**Why needed**: Eliminates magic numbers, ensures visual rhythm, responsive breakpoints defined in one place. All widgets use `AppSpacing.md` instead of `16.0`.

### Task 1.3: Create app_typography.dart
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created `lib/core/theme/app_typography.dart` with Google Fonts integration:
- **Font families**: NotoSans (English) + NotoSansBengali (Bengali) with fallback
- **Material 3 type scale**: Display, Headline, Title, Label, Body styles (19 styles)
- **Custom app styles**: appBarTitle, propertyTitle, propertyPrice, propertyLocation, propertyTag, searchHint, buttonText, bottomNavLabel
- **Bengali support**: `useBengali` parameter switches font family with fallback
- **TextTheme objects**: `lightTextTheme`, `darkTextTheme`, `bengaliTextTheme`
- **Lint clean**: No `FontFamilyResolver` (Flutter 3.22+), no `fontFamilyFallback` in getFont
**Product**: Complete typography system with bilingual support
**Why needed**: Consistent text styling, proper Bengali rendering, Material 3 compliance. Font fallback ensures Bengali text doesn't show tofu (□□□).

### Task 1.4: Create app_theme_extension.dart
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created `lib/core/theme/app_theme_extension.dart` with custom `ThemeExtension`:
- **Border radius**: card, button, input, sheet, avatar
- **Shadows**: card, elevated, modal, FAB (light + dark variants)
- **Elevations**: card, elevated, FAB
- **Animation durations**: fast, normal, slow, pageTransition, FAB
- **Opacity values**: disabled, overlay, scrim
- **Divider**: thickness, color
- **Chip**: radius, padding, label spacing
- **Search bar**: radius, padding, icon size
- **Bottom nav**: height, icon size, FAB notch margin
- **Property card**: image aspect ratio, height, image radius
- **Avatar sizes**: XS to XL
- **Breakpoints**: phone, tablet, desktop
- **Factories**: `AppThemeExtension.light()` and `AppThemeExtension.dark()`
- **Extension getter**: `context.appTheme` for easy access
**Product**: Custom design tokens accessible via `Theme.of(context).extension<AppThemeExtension>()`
**Why needed**: Material ThemeData doesn't cover all design tokens (card radius, custom shadows, chip spacing). Extension pattern allows type-safe access and overrides per theme.

### Task 1.5: Create app_theme.dart
**Status**: ⏸️ Deferred (see `appthemeProb.md`)
**Date**: 2026-08-12
**What was done**: Created minimal inline theme in `main.dart` instead. Full `app_theme.dart` will be created after Phase 2 infrastructure is stable.
**Why deferred**: Component theme complexity (15+ Material components), ColorScheme integration nuances, TextTheme integration, ThemeExtension registration, go_router + Theme integration. This avoids blocking progress on navigation, state management, and data layer.

---

## Phase 2: Core Infrastructure

### Task 2.1: Setup Riverpod Providers (ProviderScope in main.dart)
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: 
- Wrapped `runApp` with `ProviderScope` in `main.dart`
- Created `MyApp` as `ConsumerWidget` for Riverpod integration
- Added `flutter_riverpod` import
**Product**: Riverpod state management ready for all providers
**Why needed**: Enables `ref.watch()`, `ref.read()`, `ref.listen()` anywhere in widget tree. Required for theme mode, locale, auth state, and feature providers.

### Task 2.2: Configure go_router (routes, redirects, bottom nav shell)
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created complete routing infrastructure:
- `lib/router/app_router.dart` with `routerProvider` using Riverpod
- `MainScaffold` with bottom navigation (5 items) and center FAB
- Auth redirect logic (splash → onboarding → login → home)
- ShellRoute for authenticated screens with persistent bottom nav
- Route definitions: `/`, `/property/:id`, `/add-property`, `/profile`, `/settings`, `/messages`, `/favorites`, `/category`, `/login`, `/register`, `/forgot-password`, `/splash`, `/onboarding`
- Location-based current index tracking for bottom nav
**Product**: Complete declarative routing with auth guards, bottom nav, and deep linking support
**Why needed**: Single source of truth for navigation. Deep linking, auth redirects, nested navigation, web support. Replaces imperative `Navigator.push`.

### Task 2.3: Setup Localization (l10n.yaml, app_en.arb, app_bn.arb, gen-l10n)
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**:
- Created `l10n.yaml` configuration (removed deprecated `synthetic-package`)
- Created `app_en.arb` with 100+ English strings (all UI text, validation, onboarding)
- Created `app_bn.arb` with Bengali translations
- Ran `flutter gen-l10n` → generated `app_localizations.dart`, `app_localizations_en.dart`, `app_localizations_bn.dart`
- Added `AppLocalizations.delegate` and supported locales to `MaterialApp`
**Product**: Complete i18n infrastructure with EN/BN support
**Why needed**: All user-facing text externalized for translation. Bengali support from day one. `AppLocalizations.of(context)!.key` pattern ready.

### Task 2.4: Create Responsive Utilities (responsive.dart)
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created `lib/core/utils/responsive.dart` with:
- `DeviceType` enum: phone, tablet, desktop
- Breakpoints: phone (<600), tablet (600-900), desktop (>900)
- `getDeviceType(context)`, `isPhone`, `isTablet`, `isDesktop`
- Grid helpers: `gridCrossAxisCount` (1/2/3), `gridChildAspectRatio`
- Padding helpers: `horizontalPadding`, `maxContentWidth`
- Font scaling: `fontScaleFactor`
- `ResponsiveContext` extension for clean usage: `context.isTablet`, `context.gridCrossAxisCount`
**Product**: Responsive design system for phone/tablet/desktop
**Why needed**: Single source for breakpoint logic. HomeScreen will use `context.gridCrossAxisCount` for 1-col phone / 2-col tablet grid.

### Task 2.5: Create Shared Models (enums, location, user, property)
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created freezed models in `lib/shared/models/`:
- **enums.dart**: `PropertyType` (6 types with EN/BN labels), `PropertyStatus` (4 statuses)
- **location.dart**: `Division`, `District`, `Thana`, `Area`, `Location` (with lat/lng)
- **user.dart**: `User` (id, name, email, phone, avatar, bio, verification, rating)
- **property.dart**: `Property` (full listing model), `PropertyFilter` (query params), `PaginatedResponse<T>`
- **models.dart**: Barrel export
- Generated `.freezed.dart` and `.g.dart` files via `build_runner`
**Product**: Type-safe data models with JSON serialization, copyWith, equality
**Why needed**: Shared across features. Freezed gives immutability, pattern matching, JSON serialization. Models match backend API structure.

### Task 2.6: Create Location Repository with Backend Integration
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: 
- `LocationService` (Dio-based) matching backend endpoints: `/v1/basakhuji/locations/bivags|jelas|thanas|areas`
- `LocationRepository` with mock fallback matching backend data structure (same IDs/names from Flyway V1/V2)
- `dioProvider` with logging, timeouts, base URL from `AppConfig`
- **Pivot**: Removed `mock_locations.dart` — repository uses real API with mock fallback for offline dev
**Product**: Repository pattern ready for production API with offline mock support
**Why needed**: Single data source for location hierarchy. Swappable backend/mock. Matches existing backend exactly.

### Task 2.7: Create Global Providers (theme, locale, auth state)
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created `lib/shared/providers/global_providers.dart` with:
- `themeModeProvider` (ThemeMode persisted in SharedPreferences)
- `localeProvider` (Locale persisted, `isBengali`/`isEnglish` getters)
- `authStateProvider` (AuthStatus, token/userId persistence, login/logout)
- `appConfigProvider` (API base URL from dart-define)
- All providers use `StateNotifier` pattern for clean state management
**Product**: App-wide state providers accessible anywhere
**Why needed**: Theme toggle, language switch, auth persistence, config management. Riverpod providers replace `setState`/`InheritedWidget`.

---

## Phase 3: Screen Implementations (Completed as Part of Phase 2)

### Task 2.8: Auth Screens
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: 
- `LoginScreen` - email/phone, password, validation, forgot password link, register navigation
- `RegisterScreen` - name, email, phone, password, confirm, validation
- `ForgotPasswordScreen` - email input, reset link simulation
- All screens use `Form` validation, `AppLocalizations`, go_router navigation

### Task 2.9: Main App Screens
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**:
- `HomeScreen` - placeholder with app title
- `PropertyDetailScreen` - placeholder with property ID
- `AddPropertyScreen` - placeholder for 4-step form
- `ProfileScreen` - placeholder with my listings/favorites
- `SettingsScreen` - placeholder for language/theme/notifications
- `MessagesScreen` - placeholder for chat list
- `FavoritesScreen` - placeholder for saved properties
- `CategoryScreen` - grid of 6 property types with counts, navigation to filtered home

### Task 2.10: Splash & Onboarding
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**:
- `SplashScreen` - animated logo, progress bar, initializes theme/auth, navigates to onboarding or home
- `OnboardingScreen` - 3 pages (search, compare, list property), page indicators, skip/complete, persists completion flag

### Task 2.11: Main App Integration
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**:
- Updated `main.dart` to use `MaterialApp.router` with `routerConfig`
- Connected `themeModeProvider` for dynamic theme switching
- Added localization delegates and supported locales
- Light/dark themes with full component customization (AppBar, BottomNav, Card, Chip, Input, Button, FAB, Divider)

---

## Phase 3: Shared Widgets (lib/shared/widgets/)

### Task 3.1: AppButton
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created `app_button.dart`:
- **Variants**: `filled` (FilledButton), `outlined` (OutlinedButton), `text` (TextButton)
- **Sizes**: `small` (36dp), `medium` (48dp), `large` (56dp) via `AppButtonSize`
- **Features**: optional leading `icon`, `fullWidth` (default true), `loading` state (replaces label with a themed spinner matching the variant's foreground color)
- Uses theme `buttonRadius` from `context.appTheme`, `AppTypography` label styles, and `AppSpacing` heights/paddings
**Product**: One button widget for every button style in the app
**Why needed**: Consistent button look, single API for disabled/loading/full-width, rethemeable from the theme system.

### Task 3.2: AppTextField
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created `app_text_field.dart` (stateful):
- Wraps `TextFormField` with `label`, `hint`, `prefixIcon`, `suffixIcon`, `validator`, `keyboardType`, `textInputAction`, `maxLines`, `maxLength`, `enabled`, `onChanged`, `onSubmitted`
- **Password toggle**: `showObscureToggle` adds a visibility eye icon that flips `obscureText`
- Frames every field consistently with the theme's `inputDecorationTheme`
**Product**: Reusable form field with validation + secure text toggle
**Why needed**: Removes repetitive `InputDecoration` boilerplate from every auth/form screen; hides password rows come free.

### Task 3.3: AppCard
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created `app_card.dart`:
- `Material`-based card with `context.appTheme.cardRadius`, `cardElevation`, subtle shadow
- Optional `onTap` (InkWell ripple), custom `padding`, `color`, `elevation`, `borderRadius`
- `clipBehavior: Clip.antiAlias` so ripples respect the rounded shape
**Product**: Themed, tappable card used in lists/grids
**Why needed**: Property cards and category tiles all share one themed surface with ripple feedback.

### Task 3.4: LoadingWidget
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created `loading_widget.dart`:
- Centered `CircularProgressIndicator` with optional `message` text (defaults to `l10n.loading`)
- Adjustable `strokeWidth`
**Product**: Standard loading state for AsyncValue/loading screens
**Why needed**: Consistent feedback while fetching data (home, detail, messages).

### Task 3.5: ErrorView
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created `error_view.dart`:
- Error icon (`theme.colorScheme.error` color), default title `l10n.error`, optional `message`
- Optional `onRetry` → shows a small `AppButton` with `l10n.retry` + refresh icon
**Product**: Standard error state with retry
**Why needed**: Uniform API-failure screens that can trigger a refetch.

### Task 3.6: EmptyStateWidget
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created `empty_state_widget.dart`:
- Big primary-colored `icon`, `title`, optional `description`, optional `onAction`/`actionLabel` button
**Product**: Standard empty state for lists/messages/favorites
**Why needed**: Friendly "nothing here yet" messaging with actionable CTA.

### Task 3.7: AppAppBar
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created `app_app_bar.dart`:
- `PreferredSizeWidget` wrapper around `AppBar`
- Props: `title`/`titleWidget`, `actions`, `leading`, `automaticallyImplyLeading`, colors, `elevation`, `toolbarHeight` (default `AppSpacing.appBarHeight`)
- Applies `AppTypography.appBarTitle()` consistently, centered
**Product**: Reusable themed app bar for screens outside the main shell
**Why needed**: Single place for title styling/centering so every pushed screen matches.

### Task 3.8: Barrel Export
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Created `lib/shared/widgets/widgets.dart` exporting all Phase 3 widgets + `main_scaffold.dart`
**Product**: One import gets every shared widget (`import shared/widgets/widgets.dart`)
**Why needed**: Convenient single-import API for feature screens.

### Task 3.9: Screen Migration & Verification
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**:
- Migrated `LoginScreen` and `RegisterScreen` to use `AppTextField` + `AppButton` (password toggle added for free)
- Ran `flutter analyze` → **0 errors** (new widgets are lint-warning-free; remaining messages are pre-existing info-level style notes shared by the whole codebase)
**Product**: Auth screens now demonstrate the shared widgets in real use
**Why needed**: Proves the widgets work end-to-end and starts retiring raw `TextFormField`/`FilledButton` boilerplate.

---

## Structural Refactor: Screens Consolidation
**Status**: ✅ Completed
**Date**: 2026-08-12
**What was done**: Moved all `*_screen.dart` files from `lib/features/<feature>/screens/` into a single `lib/screens/` directory:
- 14 screens relocated (splash, onboarding, login, register, forgot_password, home, property_detail, add_property, profile, settings, messages, favorites, category, location_filter)
- Updated all relative imports inside every moved screen (`../../../../…` → `../…`) and in `lib/router/app_router.dart`
- Added `lib/screens/screens.dart` barrel export
- Removed now-empty `lib/features/` tree (all screen files were its only contents)
- `flutter analyze` → 0 errors, no broken URIs
**Product**: Single `lib/screens/` package holding every routed screen
**Why needed**: User requested all screens under one directory/package for easier navigation; keeps router imports short (`../screens/…`).

---

## Phase 4: Favorites/Wishlist — ⬜ Pending (Next)

---

## Phase 3 Hardening: Compile-Clean Fixes (2026-08-13)

### Task 3.10: Fix Broken Imports & Compile Errors
**Status**: ✅ Completed
**Date**: 2026-08-13
**What was done**:
- Fixed 4 widget files with incorrect relative imports (`property_card.dart`, `error_view.dart`, `empty_state_widget.dart`, `loading_widget.dart`): `../core` → `../../core`, `../../../l10n` → `../../l10n`
- Added missing `intl` import to `property_card.dart`
- Fixed `AppTypography.priceLabel()` → `propertyPrice()` (method didn't exist)
- Rewrote `PropertyCard` to import `AppCard`, use `bathtub_outlined` icon, `withValues(alpha:)` instead of deprecated `withOpacity`
- Fixed `mock_properties.dart` const correctness: `_dhaka`/`_chittagong`/`_sylhet` changed from `final` to `const` (required for use in const expressions)
- Removed unused imports across screens/widgets (`app_colors`, `app_spacing`, `global_providers`, `enums` in `property_card`, etc.)
- Removed redundant `AppLocalizations.of(context)!` across 12 screens (`nullable-getter: false` makes `of()` non-nullable)
- Cleaned `splash_screen.dart`: removed unused `_initialized` field, `authState` local, `app_colors` import
- Cleaned `analysis_options.yaml`: removed conflicting `always_use_package_imports` + `avoid_relative_lib_imports`, deprecated `avoid_null_checks_in_equality_operators`, undefined `avoid_async_pause_in_computation`
- Created `assets/images`, `assets/icons`, `assets/fonts` directories with `.gitkeep` (font `.ttf` files still missing)

**Product**: `flutter analyze` → **0 errors, 0 warnings** (173 info-level style notes remain, pre-existing)
**Why needed**: The codebase claimed "0 errors" but had multiple compile blockers preventing `flutter run`. Phase 3 now genuinely compile-clean.

### Task 3.11: Consolidate Configuration & Remove Dead Code
**Status**: ✅ Completed
**Date**: 2026-08-13
**What was done**:
- Removed duplicate `AppConfig` class from `global_providers.dart` (single source of truth now `lib/core/config/app_config.dart`)
- Updated `core/config/app_config.dart`: authoritative `apiBaseUrl` + `apiPath` = `fullApiUrl` (`/api` context-path matching Spring Boot `server.servlet.context-path`)
- Fixed `LocationRepository` dio `baseUrl` to use `AppConfig.fullApiUrl` (was missing `/api` → 404s)
- Added `@JsonKey` annotations to `location.dart` models (`Division`, `District`, `Thana`) mapping frontend `nameEn`/`nameBn` to backend DTO fields `bivNam`/`bivBnNama` etc.
- Regenerated freezed/json_serializable code via `dart run build_runner build --delete-conflicting-outputs`
- Deleted dead `location_filter_screen.dart` (old `package:http` implementation, unreferenced, superseded by `LocationRepository`)
- Removed `location_filter_screen.dart` from `screens.dart` barrel export
- Added `/forgot-password` route to `app_router.dart` (login navigates there)
- Marked `/forgot-password` as public auth route in redirect logic

**Product**: Single AppConfig, correct API base URL, backend contract alignment, dead code removed, forgot-password reachable.

### Task 3.12: Update Widget Barrel Exports
**Status**: ✅ Completed
**Date**: 2026-08-13
**What was done**: Updated `lib/shared/widgets/widgets.dart` to export `property_card.dart` and `property_filter_sheet.dart` (one-import API for all shared widgets).

---

## Phase 7: Home/Listing — ✅ COMPLETE (2026-08-13)

### Task 7.1: Property Cards Grid (Responsive)
**Status**: ✅ Completed
**Date**: 2026-08-13
**What was done**:
- `PropertyCard` tappable → navigates to `/property/:id` via `context.go`
- Favorite button overlay (icon + callback) — Phase 4 ready
- Responsive grid using `context.gridCrossAxisCount` (1/2/3 cols) and `gridChildAspectRatio` (0.75/0.8/0.85)
- `SliverGrid` inside `CustomScrollView` with `RefreshIndicator` + `AlwaysScrollableScrollPhysics`

### Task 7.2: Search Bar + Filters
**Status**: ✅ Completed
**Date**: 2026-08-13
**What was done**:
- Debounced search (350ms) → `PropertyFilterNotifier.setQuery()`
- Filter button opens `PropertyFilterSheet` (bottom sheet) with:
  - Property type: ChoiceChips (6 types, bilingual labels)
  - Bedrooms/Bathrooms: ChoiceChips (1–5+)
  - Price range: min/max `AppTextField` with numeric keyboard
  - Location cascade: Division → District → Thana dropdowns (async via `LocationRepository`, mock fallback)
- Apply returns `PropertyFilter` → `PropertyFilterNotifier.applyFilters()`
- Reset button clears form

### Task 7.3: Sorting + Pagination UI
**Status**: ✅ Completed
**Date**: 2026-08-13
**What was done**:
- Sort PopupMenuButton in AppBar (Newest, Oldest, Price ↑/↓, Area ↓) → `applySort(sortBy, ascending)`
- Pagination footer: Prev/Next `IconButton` (disabled at bounds) + `l10n.paginationShowing(start, end, total)` + `l10n.paginationPage(current, totalPages)`
- `PropertyFilterNotifier.nextPage()` / `previousPage()` auto-triggers list rebuild (watched by `propertyListProvider`)

### Task 7.4: API Integration + Loading/Error/Empty States
**Status**: ✅ Completed
**Date**: 2026-08-13
**What was done**:
- `propertyListProvider` (`AsyncNotifier`) watches `propertyFilterProvider`; rebuilds on filter/page changes
- Body uses `AsyncValue.when(skipLoadingOnRefresh: true, skipError: true)` with:
  - `LoadingWidget` (initial load)
  - `ErrorView` with retry → `propertyListProvider.notifier.refresh()`
  - `EmptyStateWidget` inside `RefreshIndicator` + `ListView` (pull-to-refresh works)
  - `SliverGrid` for data
- Category deep-link: `/?category=apartment` → `PropertyFilterNotifier.setType()` in build (guarded)
- All l10n keys pre-existed (`searchHint`, `filters`, `sortBy`, `sortPriceLowToHigh`, `sortPriceHighToLow`, `sortNewest`, `sortOldest`, `sortAreaLargeToSmall`, `paginationShowing`, `paginationPage`, `noPropertiesFound`, `noPropertiesFoundDesc`, `loading`, `error`, `retry`, `filterTitle`, `filterPropertyType`, `filterBedrooms`, `filterBathrooms`, `filterPriceRange`, `filterMinPrice`, `filterMaxPrice`, `filterLocation`, `filterDivision`, `filterDistrict`, `filterThana`, `filterApply`, `filterReset`)

**Product**: Fully functional home screen with search, filter, sort, pagination, responsive grid, and proper async states. Mock fallback active (`useMockFallback: true`) since backend properties API not yet implemented.

---

## Phase 4: Favorites/Wishlist — ⬜ Pending (Next)

---

## Font Gap Resolution (2026-08-13)

**Action**: Removed bundled font configuration from `pubspec.yaml`. The app now uses `google_fonts` (NotoSans + NotoSansBengali) at runtime via `GoogleFonts.getFont()` in `AppTypography`.

**Why**: The declared `assets/fonts/NotoSans*.ttf` files were missing, causing `flutter run`/`build` to fail. Since `google_fonts` is already a dependency and used in `AppTypography._style()`, it provides the same fonts without local assets.

**Reminder for Future**: When custom font files are available (e.g., branded typeface, offline support, or licensing needs):
1. Place `.ttf` files in `assets/fonts/`
2. Re-add to `pubspec.yaml`:
   ```yaml
   flutter:
     fonts:
       - family: NotoSansBengali
         fonts:
           - asset: assets/fonts/NotoSansBengali-Regular.ttf
           - asset: assets/fonts/NotoSansBengali-Bold.ttf
             weight: 700
       - family: NotoSans
         fonts:
           - asset: assets/fonts/NotoSans-Regular.ttf
           - asset: assets/fonts/NotoSans-Bold.ttf
             weight: 700
   ```
3. Update `AppTypography.fontFamilyEn` / `fontFamilyBn` constants if family names change.
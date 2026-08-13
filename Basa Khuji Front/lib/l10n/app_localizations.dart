import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_bn.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('bn'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Basa Khujo'**
  String get appTitle;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @messages.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messages;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search by area, type, keyword...'**
  String get searchHint;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @filters.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filters;

  /// No description provided for @sortBy.
  ///
  /// In en, this message translates to:
  /// **'Sort by:'**
  String get sortBy;

  /// No description provided for @pricePerMonth.
  ///
  /// In en, this message translates to:
  /// **'{price} / mo'**
  String pricePerMonth(Object price);

  /// No description provided for @bedrooms.
  ///
  /// In en, this message translates to:
  /// **'{count} Bed'**
  String bedrooms(Object count);

  /// No description provided for @bathrooms.
  ///
  /// In en, this message translates to:
  /// **'{count} Bath'**
  String bathrooms(Object count);

  /// No description provided for @area.
  ///
  /// In en, this message translates to:
  /// **'{area} sqft'**
  String area(Object area);

  /// No description provided for @propertyTypeApartment.
  ///
  /// In en, this message translates to:
  /// **'Apartment'**
  String get propertyTypeApartment;

  /// No description provided for @propertyTypeHouse.
  ///
  /// In en, this message translates to:
  /// **'House'**
  String get propertyTypeHouse;

  /// No description provided for @propertyTypeCommercial.
  ///
  /// In en, this message translates to:
  /// **'Commercial'**
  String get propertyTypeCommercial;

  /// No description provided for @propertyTypeLand.
  ///
  /// In en, this message translates to:
  /// **'Land'**
  String get propertyTypeLand;

  /// No description provided for @propertyTypeRoom.
  ///
  /// In en, this message translates to:
  /// **'Room'**
  String get propertyTypeRoom;

  /// No description provided for @propertyTypeHostel.
  ///
  /// In en, this message translates to:
  /// **'Hostel'**
  String get propertyTypeHostel;

  /// No description provided for @filterTitle.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filterTitle;

  /// No description provided for @filterPriceRange.
  ///
  /// In en, this message translates to:
  /// **'Price Range'**
  String get filterPriceRange;

  /// No description provided for @filterMinPrice.
  ///
  /// In en, this message translates to:
  /// **'Min Price'**
  String get filterMinPrice;

  /// No description provided for @filterMaxPrice.
  ///
  /// In en, this message translates to:
  /// **'Max Price'**
  String get filterMaxPrice;

  /// No description provided for @filterPropertyType.
  ///
  /// In en, this message translates to:
  /// **'Property Type'**
  String get filterPropertyType;

  /// No description provided for @filterBedrooms.
  ///
  /// In en, this message translates to:
  /// **'Bedrooms'**
  String get filterBedrooms;

  /// No description provided for @filterBathrooms.
  ///
  /// In en, this message translates to:
  /// **'Bathrooms'**
  String get filterBathrooms;

  /// No description provided for @filterLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get filterLocation;

  /// No description provided for @filterDivision.
  ///
  /// In en, this message translates to:
  /// **'Division'**
  String get filterDivision;

  /// No description provided for @filterDistrict.
  ///
  /// In en, this message translates to:
  /// **'District'**
  String get filterDistrict;

  /// No description provided for @filterThana.
  ///
  /// In en, this message translates to:
  /// **'Thana'**
  String get filterThana;

  /// No description provided for @filterApply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get filterApply;

  /// No description provided for @filterReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get filterReset;

  /// No description provided for @sortPriceLowToHigh.
  ///
  /// In en, this message translates to:
  /// **'Price: Low to High'**
  String get sortPriceLowToHigh;

  /// No description provided for @sortPriceHighToLow.
  ///
  /// In en, this message translates to:
  /// **'Price: High to Low'**
  String get sortPriceHighToLow;

  /// No description provided for @sortNewest.
  ///
  /// In en, this message translates to:
  /// **'Newest First'**
  String get sortNewest;

  /// No description provided for @sortOldest.
  ///
  /// In en, this message translates to:
  /// **'Oldest First'**
  String get sortOldest;

  /// No description provided for @sortAreaLargeToSmall.
  ///
  /// In en, this message translates to:
  /// **'Area: Large to Small'**
  String get sortAreaLargeToSmall;

  /// No description provided for @paginationShowing.
  ///
  /// In en, this message translates to:
  /// **'Showing {start}–{end} of {total} properties'**
  String paginationShowing(Object start, Object end, Object total);

  /// No description provided for @paginationPage.
  ///
  /// In en, this message translates to:
  /// **'Page {current} of {total}'**
  String paginationPage(Object current, Object total);

  /// No description provided for @noPropertiesFound.
  ///
  /// In en, this message translates to:
  /// **'No properties found'**
  String get noPropertiesFound;

  /// No description provided for @noPropertiesFoundDesc.
  ///
  /// In en, this message translates to:
  /// **'Try adjusting your filters or search criteria'**
  String get noPropertiesFoundDesc;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @addPropertyTitle.
  ///
  /// In en, this message translates to:
  /// **'Add Property'**
  String get addPropertyTitle;

  /// No description provided for @addPropertyStep1.
  ///
  /// In en, this message translates to:
  /// **'Basic Info'**
  String get addPropertyStep1;

  /// No description provided for @addPropertyStep2.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get addPropertyStep2;

  /// No description provided for @addPropertyStep3.
  ///
  /// In en, this message translates to:
  /// **'Photos'**
  String get addPropertyStep3;

  /// No description provided for @addPropertyStep4.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get addPropertyStep4;

  /// No description provided for @addPropertyNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get addPropertyNext;

  /// No description provided for @addPropertyBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get addPropertyBack;

  /// No description provided for @addPropertySubmit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get addPropertySubmit;

  /// No description provided for @addPropertyTitleLabel.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get addPropertyTitleLabel;

  /// No description provided for @addPropertyTitleHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., 2 Bedroom Apartment in Dhanmondi'**
  String get addPropertyTitleHint;

  /// No description provided for @addPropertyDescriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get addPropertyDescriptionLabel;

  /// No description provided for @addPropertyDescriptionHint.
  ///
  /// In en, this message translates to:
  /// **'Describe the property...'**
  String get addPropertyDescriptionHint;

  /// No description provided for @addPropertyPriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Price (BDT/month)'**
  String get addPropertyPriceLabel;

  /// No description provided for @addPropertyPriceHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., 15000'**
  String get addPropertyPriceHint;

  /// No description provided for @addPropertyTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Property Type'**
  String get addPropertyTypeLabel;

  /// No description provided for @addPropertyBedroomsLabel.
  ///
  /// In en, this message translates to:
  /// **'Bedrooms'**
  String get addPropertyBedroomsLabel;

  /// No description provided for @addPropertyBathroomsLabel.
  ///
  /// In en, this message translates to:
  /// **'Bathrooms'**
  String get addPropertyBathroomsLabel;

  /// No description provided for @addPropertyAreaLabel.
  ///
  /// In en, this message translates to:
  /// **'Area (sqft)'**
  String get addPropertyAreaLabel;

  /// No description provided for @addPropertyAreaHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., 1200'**
  String get addPropertyAreaHint;

  /// No description provided for @addPropertyDivisionLabel.
  ///
  /// In en, this message translates to:
  /// **'Division'**
  String get addPropertyDivisionLabel;

  /// No description provided for @addPropertyDistrictLabel.
  ///
  /// In en, this message translates to:
  /// **'District'**
  String get addPropertyDistrictLabel;

  /// No description provided for @addPropertyThanaLabel.
  ///
  /// In en, this message translates to:
  /// **'Thana'**
  String get addPropertyThanaLabel;

  /// No description provided for @addPropertyAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'Detailed Address'**
  String get addPropertyAddressLabel;

  /// No description provided for @addPropertyAddressHint.
  ///
  /// In en, this message translates to:
  /// **'House/Road/Block details'**
  String get addPropertyAddressHint;

  /// No description provided for @addPropertyPhotosLabel.
  ///
  /// In en, this message translates to:
  /// **'Photos'**
  String get addPropertyPhotosLabel;

  /// No description provided for @addPropertyPhotosHint.
  ///
  /// In en, this message translates to:
  /// **'Add up to 10 photos'**
  String get addPropertyPhotosHint;

  /// No description provided for @addPropertyReviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Review Your Listing'**
  String get addPropertyReviewTitle;

  /// No description provided for @addPropertyReviewDesc.
  ///
  /// In en, this message translates to:
  /// **'Please verify all details before submitting'**
  String get addPropertyReviewDesc;

  /// No description provided for @propertyDetailContactOwner.
  ///
  /// In en, this message translates to:
  /// **'Contact Owner'**
  String get propertyDetailContactOwner;

  /// No description provided for @propertyDetailCall.
  ///
  /// In en, this message translates to:
  /// **'Call'**
  String get propertyDetailCall;

  /// No description provided for @propertyDetailMessage.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get propertyDetailMessage;

  /// No description provided for @propertyDetailShare.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get propertyDetailShare;

  /// No description provided for @propertyDetailSimilar.
  ///
  /// In en, this message translates to:
  /// **'Similar Properties'**
  String get propertyDetailSimilar;

  /// No description provided for @propertyDetailMap.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get propertyDetailMap;

  /// No description provided for @profileMyListings.
  ///
  /// In en, this message translates to:
  /// **'My Listings'**
  String get profileMyListings;

  /// No description provided for @profileFavorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get profileFavorites;

  /// No description provided for @profileSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get profileSettings;

  /// No description provided for @profileEditProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get profileEditProfile;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @settingsTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsTheme;

  /// No description provided for @settingsNotifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settingsNotifications;

  /// No description provided for @settingsAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsAbout;

  /// No description provided for @settingsLogout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get settingsLogout;

  /// No description provided for @settingsLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsLight;

  /// No description provided for @settingsDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingsDark;

  /// No description provided for @settingsSystem.
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get settingsSystem;

  /// No description provided for @settingsEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get settingsEnglish;

  /// No description provided for @settingsBengali.
  ///
  /// In en, this message translates to:
  /// **'বাংলা'**
  String get settingsBengali;

  /// No description provided for @loginTitle.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginTitle;

  /// No description provided for @loginEmailPhone.
  ///
  /// In en, this message translates to:
  /// **'Email or Phone'**
  String get loginEmailPhone;

  /// No description provided for @loginPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get loginPassword;

  /// No description provided for @loginForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get loginForgotPassword;

  /// No description provided for @loginButton.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginButton;

  /// No description provided for @loginNoAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get loginNoAccount;

  /// No description provided for @loginRegister.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get loginRegister;

  /// No description provided for @registerTitle.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get registerTitle;

  /// No description provided for @registerName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get registerName;

  /// No description provided for @registerEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get registerEmail;

  /// No description provided for @registerPhone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get registerPhone;

  /// No description provided for @registerPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get registerPassword;

  /// No description provided for @registerConfirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get registerConfirmPassword;

  /// No description provided for @registerButton.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get registerButton;

  /// No description provided for @registerHasAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get registerHasAccount;

  /// No description provided for @registerLogin.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get registerLogin;

  /// No description provided for @messagesTitle.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messagesTitle;

  /// No description provided for @messagesEmpty.
  ///
  /// In en, this message translates to:
  /// **'No messages yet'**
  String get messagesEmpty;

  /// No description provided for @messagesEmptyDesc.
  ///
  /// In en, this message translates to:
  /// **'Start a conversation with a property owner'**
  String get messagesEmptyDesc;

  /// No description provided for @categoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categoryTitle;

  /// No description provided for @categoryApartment.
  ///
  /// In en, this message translates to:
  /// **'Apartments'**
  String get categoryApartment;

  /// No description provided for @categoryHouse.
  ///
  /// In en, this message translates to:
  /// **'Houses'**
  String get categoryHouse;

  /// No description provided for @categoryCommercial.
  ///
  /// In en, this message translates to:
  /// **'Commercial'**
  String get categoryCommercial;

  /// No description provided for @categoryLand.
  ///
  /// In en, this message translates to:
  /// **'Land'**
  String get categoryLand;

  /// No description provided for @categoryRoom.
  ///
  /// In en, this message translates to:
  /// **'Rooms'**
  String get categoryRoom;

  /// No description provided for @categoryHostel.
  ///
  /// In en, this message translates to:
  /// **'Hostels'**
  String get categoryHostel;

  /// No description provided for @categoryAvailable.
  ///
  /// In en, this message translates to:
  /// **'{count} available'**
  String categoryAvailable(Object count);

  /// No description provided for @splashLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading Basa Khujo...'**
  String get splashLoading;

  /// No description provided for @onboardingSlide1Title.
  ///
  /// In en, this message translates to:
  /// **'Find Your Perfect Home'**
  String get onboardingSlide1Title;

  /// No description provided for @onboardingSlide1Desc.
  ///
  /// In en, this message translates to:
  /// **'Search thousands of verified rental properties across Bangladesh'**
  String get onboardingSlide1Desc;

  /// No description provided for @onboardingSlide2Title.
  ///
  /// In en, this message translates to:
  /// **'Compare & Decide'**
  String get onboardingSlide2Title;

  /// No description provided for @onboardingSlide2Desc.
  ///
  /// In en, this message translates to:
  /// **'View photos, prices, and locations to make the best choice'**
  String get onboardingSlide2Desc;

  /// No description provided for @onboardingSlide3Title.
  ///
  /// In en, this message translates to:
  /// **'List Your Property'**
  String get onboardingSlide3Title;

  /// No description provided for @onboardingSlide3Desc.
  ///
  /// In en, this message translates to:
  /// **'Property owner? List your rental in minutes and find tenants fast'**
  String get onboardingSlide3Desc;

  /// No description provided for @onboardingSkip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get onboardingSkip;

  /// No description provided for @onboardingNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get onboardingNext;

  /// No description provided for @onboardingGetStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get onboardingGetStarted;

  /// No description provided for @validationRequired.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get validationRequired;

  /// No description provided for @validationInvalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get validationInvalidEmail;

  /// No description provided for @validationInvalidPhone.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid phone number'**
  String get validationInvalidPhone;

  /// No description provided for @validationPricePositive.
  ///
  /// In en, this message translates to:
  /// **'Price must be positive'**
  String get validationPricePositive;

  /// No description provided for @validationAreaPositive.
  ///
  /// In en, this message translates to:
  /// **'Area must be positive'**
  String get validationAreaPositive;

  /// No description provided for @validationPasswordMinLength.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get validationPasswordMinLength;

  /// No description provided for @validationPasswordMismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get validationPasswordMismatch;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['bn', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'bn':
      return AppLocalizationsBn();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

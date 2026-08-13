// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Basa Khujo';

  @override
  String get home => 'Home';

  @override
  String get category => 'Category';

  @override
  String get add => 'Add';

  @override
  String get messages => 'Messages';

  @override
  String get account => 'Account';

  @override
  String get searchHint => 'Search by area, type, keyword...';

  @override
  String get search => 'Search';

  @override
  String get filters => 'Filters';

  @override
  String get sortBy => 'Sort by:';

  @override
  String pricePerMonth(Object price) {
    return '$price / mo';
  }

  @override
  String bedrooms(Object count) {
    return '$count Bed';
  }

  @override
  String bathrooms(Object count) {
    return '$count Bath';
  }

  @override
  String area(Object area) {
    return '$area sqft';
  }

  @override
  String get propertyTypeApartment => 'Apartment';

  @override
  String get propertyTypeHouse => 'House';

  @override
  String get propertyTypeCommercial => 'Commercial';

  @override
  String get propertyTypeLand => 'Land';

  @override
  String get propertyTypeRoom => 'Room';

  @override
  String get propertyTypeHostel => 'Hostel';

  @override
  String get filterTitle => 'Filters';

  @override
  String get filterPriceRange => 'Price Range';

  @override
  String get filterMinPrice => 'Min Price';

  @override
  String get filterMaxPrice => 'Max Price';

  @override
  String get filterPropertyType => 'Property Type';

  @override
  String get filterBedrooms => 'Bedrooms';

  @override
  String get filterBathrooms => 'Bathrooms';

  @override
  String get filterLocation => 'Location';

  @override
  String get filterDivision => 'Division';

  @override
  String get filterDistrict => 'District';

  @override
  String get filterThana => 'Thana';

  @override
  String get filterApply => 'Apply';

  @override
  String get filterReset => 'Reset';

  @override
  String get sortPriceLowToHigh => 'Price: Low to High';

  @override
  String get sortPriceHighToLow => 'Price: High to Low';

  @override
  String get sortNewest => 'Newest First';

  @override
  String get sortOldest => 'Oldest First';

  @override
  String get sortAreaLargeToSmall => 'Area: Large to Small';

  @override
  String paginationShowing(Object start, Object end, Object total) {
    return 'Showing $start–$end of $total properties';
  }

  @override
  String paginationPage(Object current, Object total) {
    return 'Page $current of $total';
  }

  @override
  String get noPropertiesFound => 'No properties found';

  @override
  String get noPropertiesFoundDesc =>
      'Try adjusting your filters or search criteria';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get retry => 'Retry';

  @override
  String get addPropertyTitle => 'Add Property';

  @override
  String get addPropertyStep1 => 'Basic Info';

  @override
  String get addPropertyStep2 => 'Location';

  @override
  String get addPropertyStep3 => 'Photos';

  @override
  String get addPropertyStep4 => 'Review';

  @override
  String get addPropertyNext => 'Next';

  @override
  String get addPropertyBack => 'Back';

  @override
  String get addPropertySubmit => 'Submit';

  @override
  String get addPropertyTitleLabel => 'Title';

  @override
  String get addPropertyTitleHint => 'e.g., 2 Bedroom Apartment in Dhanmondi';

  @override
  String get addPropertyDescriptionLabel => 'Description';

  @override
  String get addPropertyDescriptionHint => 'Describe the property...';

  @override
  String get addPropertyPriceLabel => 'Price (BDT/month)';

  @override
  String get addPropertyPriceHint => 'e.g., 15000';

  @override
  String get addPropertyTypeLabel => 'Property Type';

  @override
  String get addPropertyBedroomsLabel => 'Bedrooms';

  @override
  String get addPropertyBathroomsLabel => 'Bathrooms';

  @override
  String get addPropertyAreaLabel => 'Area (sqft)';

  @override
  String get addPropertyAreaHint => 'e.g., 1200';

  @override
  String get addPropertyDivisionLabel => 'Division';

  @override
  String get addPropertyDistrictLabel => 'District';

  @override
  String get addPropertyThanaLabel => 'Thana';

  @override
  String get addPropertyAddressLabel => 'Detailed Address';

  @override
  String get addPropertyAddressHint => 'House/Road/Block details';

  @override
  String get addPropertyPhotosLabel => 'Photos';

  @override
  String get addPropertyPhotosHint => 'Add up to 10 photos';

  @override
  String get addPropertyReviewTitle => 'Review Your Listing';

  @override
  String get addPropertyReviewDesc =>
      'Please verify all details before submitting';

  @override
  String get propertyDetailContactOwner => 'Contact Owner';

  @override
  String get propertyDetailCall => 'Call';

  @override
  String get propertyDetailMessage => 'Message';

  @override
  String get propertyDetailShare => 'Share';

  @override
  String get propertyDetailSimilar => 'Similar Properties';

  @override
  String get propertyDetailMap => 'Location';

  @override
  String get profileMyListings => 'My Listings';

  @override
  String get profileFavorites => 'Favorites';

  @override
  String get profileSettings => 'Settings';

  @override
  String get profileEditProfile => 'Edit Profile';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get settingsTheme => 'Theme';

  @override
  String get settingsNotifications => 'Notifications';

  @override
  String get settingsAbout => 'About';

  @override
  String get settingsLogout => 'Logout';

  @override
  String get settingsLight => 'Light';

  @override
  String get settingsDark => 'Dark';

  @override
  String get settingsSystem => 'System Default';

  @override
  String get settingsEnglish => 'English';

  @override
  String get settingsBengali => 'বাংলা';

  @override
  String get loginTitle => 'Login';

  @override
  String get loginEmailPhone => 'Email or Phone';

  @override
  String get loginPassword => 'Password';

  @override
  String get loginForgotPassword => 'Forgot Password?';

  @override
  String get loginButton => 'Login';

  @override
  String get loginNoAccount => 'Don\'t have an account?';

  @override
  String get loginRegister => 'Register';

  @override
  String get registerTitle => 'Register';

  @override
  String get registerName => 'Full Name';

  @override
  String get registerEmail => 'Email';

  @override
  String get registerPhone => 'Phone';

  @override
  String get registerPassword => 'Password';

  @override
  String get registerConfirmPassword => 'Confirm Password';

  @override
  String get registerButton => 'Register';

  @override
  String get registerHasAccount => 'Already have an account?';

  @override
  String get registerLogin => 'Login';

  @override
  String get messagesTitle => 'Messages';

  @override
  String get messagesEmpty => 'No messages yet';

  @override
  String get messagesEmptyDesc => 'Start a conversation with a property owner';

  @override
  String get categoryTitle => 'Categories';

  @override
  String get categoryApartment => 'Apartments';

  @override
  String get categoryHouse => 'Houses';

  @override
  String get categoryCommercial => 'Commercial';

  @override
  String get categoryLand => 'Land';

  @override
  String get categoryRoom => 'Rooms';

  @override
  String get categoryHostel => 'Hostels';

  @override
  String categoryAvailable(Object count) {
    return '$count available';
  }

  @override
  String get splashLoading => 'Loading Basa Khujo...';

  @override
  String get onboardingSlide1Title => 'Find Your Perfect Home';

  @override
  String get onboardingSlide1Desc =>
      'Search thousands of verified rental properties across Bangladesh';

  @override
  String get onboardingSlide2Title => 'Compare & Decide';

  @override
  String get onboardingSlide2Desc =>
      'View photos, prices, and locations to make the best choice';

  @override
  String get onboardingSlide3Title => 'List Your Property';

  @override
  String get onboardingSlide3Desc =>
      'Property owner? List your rental in minutes and find tenants fast';

  @override
  String get onboardingSkip => 'Skip';

  @override
  String get onboardingNext => 'Next';

  @override
  String get onboardingGetStarted => 'Get Started';

  @override
  String get validationRequired => 'This field is required';

  @override
  String get validationInvalidEmail => 'Enter a valid email';

  @override
  String get validationInvalidPhone => 'Enter a valid phone number';

  @override
  String get validationPricePositive => 'Price must be positive';

  @override
  String get validationAreaPositive => 'Area must be positive';

  @override
  String get validationPasswordMinLength =>
      'Password must be at least 6 characters';

  @override
  String get validationPasswordMismatch => 'Passwords do not match';
}

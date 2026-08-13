// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'বাসা খুজো';

  @override
  String get home => 'হোম';

  @override
  String get category => 'ক্যাটাগরি';

  @override
  String get add => 'জোগ করুন';

  @override
  String get messages => 'মেসেজ';

  @override
  String get account => 'অ্যাকাউন্ট';

  @override
  String get searchHint => 'এরিয়া, টাইপ, কীওয়ার্ড দিয়ে খুঁজুন...';

  @override
  String get search => 'খুঁজুন';

  @override
  String get filters => 'ফিল্টার';

  @override
  String get sortBy => 'সাজান:';

  @override
  String pricePerMonth(Object price) {
    return '$price / মাস';
  }

  @override
  String bedrooms(Object count) {
    return '$count বেডরুম';
  }

  @override
  String bathrooms(Object count) {
    return '$count বাথরুম';
  }

  @override
  String area(Object area) {
    return '$area বর্গ ফুট';
  }

  @override
  String get propertyTypeApartment => 'অ্যাপার্টমেন্ট';

  @override
  String get propertyTypeHouse => 'বাসা';

  @override
  String get propertyTypeCommercial => 'বাণিজ্যিক';

  @override
  String get propertyTypeLand => 'জমি';

  @override
  String get propertyTypeRoom => 'রুম';

  @override
  String get propertyTypeHostel => 'হостেল';

  @override
  String get filterTitle => 'ফিল্টার';

  @override
  String get filterPriceRange => 'মূল্য পরিসীমা';

  @override
  String get filterMinPrice => 'ন্যূনতম মূল্য';

  @override
  String get filterMaxPrice => 'সর্বোচ্চ মূল্য';

  @override
  String get filterPropertyType => 'সম্পত্তির ধরন';

  @override
  String get filterBedrooms => 'বেডরুম';

  @override
  String get filterBathrooms => 'বাথরুম';

  @override
  String get filterLocation => 'অবস্থান';

  @override
  String get filterDivision => 'বিভাগ';

  @override
  String get filterDistrict => 'জেলা';

  @override
  String get filterThana => 'থানা';

  @override
  String get filterApply => 'প্রয়োগ করুন';

  @override
  String get filterReset => 'রিসেট';

  @override
  String get sortPriceLowToHigh => 'মূল্য: কম থেকে বেশি';

  @override
  String get sortPriceHighToLow => 'মূল্য: বেশি থেকে কম';

  @override
  String get sortNewest => 'নতুন আগে';

  @override
  String get sortOldest => 'পুরানো আগে';

  @override
  String get sortAreaLargeToSmall => 'এরিয়া: বড় থেকে ছোট';

  @override
  String paginationShowing(Object start, Object end, Object total) {
    return '$start–$end দেখানো হচ্ছে, মোট $total প্রপার্টি';
  }

  @override
  String paginationPage(Object current, Object total) {
    return 'পৃষ্ঠা $current / $total';
  }

  @override
  String get noPropertiesFound => 'কোনো প্রপার্টি পাওয়া যায়নি';

  @override
  String get noPropertiesFoundDesc => 'ফিল্টার বা অনুসন্ধান পরিবর্তন করুন';

  @override
  String get loading => 'লোড হচ্ছে...';

  @override
  String get error => 'ত্রুটি';

  @override
  String get retry => 'আবার চেষ্টা করুন';

  @override
  String get addPropertyTitle => 'প্রপার্টি যোগ করুন';

  @override
  String get addPropertyStep1 => 'বেসিক তথ্য';

  @override
  String get addPropertyStep2 => 'অবস্থান';

  @override
  String get addPropertyStep3 => 'ছবি';

  @override
  String get addPropertyStep4 => 'পর্যালোচনা';

  @override
  String get addPropertyNext => 'পরবর্তী';

  @override
  String get addPropertyBack => 'পেছনে';

  @override
  String get addPropertySubmit => 'জমা দিন';

  @override
  String get addPropertyTitleLabel => 'শিরোনাম';

  @override
  String get addPropertyTitleHint => 'যেমন: ধানমন্ডিতে ২ বেডরুম অ্যাপার্টমেন্ট';

  @override
  String get addPropertyDescriptionLabel => 'বিবরণ';

  @override
  String get addPropertyDescriptionHint => 'প্রপার্টির বিবরণ লিখুন...';

  @override
  String get addPropertyPriceLabel => 'ভাড়া (বিডিটি/মাস)';

  @override
  String get addPropertyPriceHint => 'যেমন: ১৫০০০';

  @override
  String get addPropertyTypeLabel => 'প্রপার্টির ধরন';

  @override
  String get addPropertyBedroomsLabel => 'বেডরুম';

  @override
  String get addPropertyBathroomsLabel => 'বাথরুম';

  @override
  String get addPropertyAreaLabel => 'এরিয়া (বর্গ ফুট)';

  @override
  String get addPropertyAreaHint => 'যেমন: ১২০০';

  @override
  String get addPropertyDivisionLabel => 'বিভাগ';

  @override
  String get addPropertyDistrictLabel => 'জেলা';

  @override
  String get addPropertyThanaLabel => 'থানা';

  @override
  String get addPropertyAddressLabel => 'বিস্তারিত ঠিকানা';

  @override
  String get addPropertyAddressHint => 'হাউস/রোড/ব্লক বিবরণ';

  @override
  String get addPropertyPhotosLabel => 'ছবিসমূহ';

  @override
  String get addPropertyPhotosHint => 'সর্বোচ্চ ১০টি ছবি যোগ করুন';

  @override
  String get addPropertyReviewTitle => 'আপনার লিস্টিং পর্যালোচনা করুন';

  @override
  String get addPropertyReviewDesc => 'জমা দেওয়ার আগে সব বিবরণ যাচাই করুন';

  @override
  String get propertyDetailContactOwner => 'মালিকের সাথে যোগাযোগ';

  @override
  String get propertyDetailCall => 'কল করুন';

  @override
  String get propertyDetailMessage => 'মেসেজ';

  @override
  String get propertyDetailShare => 'শেয়ার';

  @override
  String get propertyDetailSimilar => 'সদৃশ প্রপার্টি';

  @override
  String get propertyDetailMap => 'মানচিত্র';

  @override
  String get profileMyListings => 'আমার লিস্টিং';

  @override
  String get profileFavorites => 'পছন্দেরসমূহ';

  @override
  String get profileSettings => 'সেটিংস';

  @override
  String get profileEditProfile => 'প্রোফাইল সম্পাদনা';

  @override
  String get settingsTitle => 'সেটিংস';

  @override
  String get settingsLanguage => 'ভাষা';

  @override
  String get settingsTheme => 'থিম';

  @override
  String get settingsNotifications => 'নোটিফিকেশন';

  @override
  String get settingsAbout => 'বিষয়ে';

  @override
  String get settingsLogout => 'লগ আউট';

  @override
  String get settingsLight => 'হালকা';

  @override
  String get settingsDark => 'গাঢ়';

  @override
  String get settingsSystem => 'সিস্টেম ডিফল্ট';

  @override
  String get settingsEnglish => 'English';

  @override
  String get settingsBengali => 'বাংলা';

  @override
  String get loginTitle => 'লগ ইন';

  @override
  String get loginEmailPhone => 'ইমেইল বা ফোন';

  @override
  String get loginPassword => 'পাসওয়ার্ড';

  @override
  String get loginForgotPassword => 'পাসওয়ার্ড ভুলে গেলেন?';

  @override
  String get loginButton => 'লগ ইন';

  @override
  String get loginNoAccount => 'অ্যাকাউন্ট নেই?';

  @override
  String get loginRegister => 'নিবন্ধন';

  @override
  String get registerTitle => 'নিবন্ধন';

  @override
  String get registerName => 'পুরো নাম';

  @override
  String get registerEmail => 'ইমেইল';

  @override
  String get registerPhone => 'ফোন';

  @override
  String get registerPassword => 'পাসওয়ার্ড';

  @override
  String get registerConfirmPassword => 'পাসওয়ার্ড নিশ্চিত করুন';

  @override
  String get registerButton => 'নিবন্ধন';

  @override
  String get registerHasAccount => 'আরও আছে অ্যাকাউন্ট?';

  @override
  String get registerLogin => 'লগ ইন';

  @override
  String get messagesTitle => 'মেসেজ';

  @override
  String get messagesEmpty => 'এখনো কোনো মেসেজ নেই';

  @override
  String get messagesEmptyDesc => 'প্রপার্টি মালিকের সাথে কথা বলা শুরু করুন';

  @override
  String get categoryTitle => 'ক্যাটাগরি';

  @override
  String get categoryApartment => 'অ্যাপার্টমেন্ট';

  @override
  String get categoryHouse => 'বাসা';

  @override
  String get categoryCommercial => 'বাণিজ্যিক';

  @override
  String get categoryLand => 'জমি';

  @override
  String get categoryRoom => 'রুম';

  @override
  String get categoryHostel => 'হোস্টেল';

  @override
  String categoryAvailable(Object count) {
    return '$countটি উপলব্ধ';
  }

  @override
  String get splashLoading => 'বাসা খুজো লোড হচ্ছে...';

  @override
  String get onboardingSlide1Title => 'আপনার সুন্দর বাসা খুঁজুন';

  @override
  String get onboardingSlide1Desc =>
      'বাংলাদেশ জুড়ে হাজারো যাচাইকৃত ভাড়ার প্রপার্টি খুঁজুন';

  @override
  String get onboardingSlide2Title => 'তুলনা করুন ও সিদ্ধান্ত নিন';

  @override
  String get onboardingSlide2Desc =>
      'ছবি, দাম, এবং লোকেশন দেখে সেরা সিদ্ধান্ত নিন';

  @override
  String get onboardingSlide3Title => 'আপনার প্রপার্টি লিস্ট করুন';

  @override
  String get onboardingSlide3Desc =>
      'প্রপার্টি মালিক? মিনিটে আপনার ভাড়ার লিস্ট করুন এবং ভাড়াটেয়दार পান';

  @override
  String get onboardingSkip => 'বাড়তি';

  @override
  String get onboardingNext => 'পরবর্তী';

  @override
  String get onboardingGetStarted => 'শুরু করুন';

  @override
  String get validationRequired => 'এই ফিল্ড আবশ্যক';

  @override
  String get validationInvalidEmail => 'বৈধ ইমেইল দিন';

  @override
  String get validationInvalidPhone => 'বৈধ ফোন নম্বর দিন';

  @override
  String get validationPricePositive => 'দাম ধনাত্মক হতে হবে';

  @override
  String get validationAreaPositive => 'এরিয়া ধনাত্মক হতে হবে';

  @override
  String get validationPasswordMinLength =>
      'পাসওয়ার্ড কমপক্ষে ৬ অক্ষরের হতে হবে';

  @override
  String get validationPasswordMismatch => 'পাসওয়ার্ড মিলছে না';
}

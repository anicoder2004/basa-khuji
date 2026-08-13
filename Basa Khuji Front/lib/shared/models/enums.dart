enum PropertyType {
  apartment('apartment', 'Apartment', 'অ্যাপার্টমেন্ট'),
  house('house', 'House', 'বাসা'),
  commercial('commercial', 'Commercial', 'বাণিজ্যিক'),
  land('land', 'Land', 'জমি'),
  room('room', 'Room', 'রুম'),
  hostel('hostel', 'Hostel', 'হোস্টেল');

  const PropertyType(this.value, this.labelEn, this.labelBn);

  final String value;
  final String labelEn;
  final String labelBn;

  String label({required bool isBengali}) => isBengali ? labelBn : labelEn;

  static PropertyType fromString(String value) {
    return PropertyType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => PropertyType.apartment,
    );
  }
}

enum PropertyStatus {
  active('active', 'Active', 'সক্রিয়'),
  rented('rented', 'Rented', 'ভাড়া দিয়ে আছে'),
  draft('draft', 'Draft', 'খসড়া'),
  inactive('inactive', 'Inactive', 'নিষ্ক্রিয়');

  const PropertyStatus(this.value, this.labelEn, this.labelBn);

  final String value;
  final String labelEn;
  final String labelBn;

  String label({required bool isBengali}) => isBengali ? labelBn : labelEn;
}
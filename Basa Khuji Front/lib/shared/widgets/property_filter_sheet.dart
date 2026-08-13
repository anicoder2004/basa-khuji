import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/enums.dart';
import '../models/location.dart';
import '../models/property.dart';
import '../providers/location_repository.dart';
import '../../l10n/app_localizations.dart';
import '../../core/theme/app_spacing.dart';
import 'app_button.dart';
import 'app_text_field.dart';

/// Shows the bottom-sheet filter dialog. Returns the constructed
/// [PropertyFilter] when the user taps Apply, or `null` on dismiss.
Future<PropertyFilter?> showPropertyFilterSheet({
  required BuildContext context,
  required PropertyFilter initialFilter,
}) {
  return showModalBottomSheet<PropertyFilter>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (context) =>
        _PropertyFilterSheet(initialFilter: initialFilter),
  );
}

class _PropertyFilterSheet extends ConsumerStatefulWidget {
  final PropertyFilter initialFilter;

  const _PropertyFilterSheet({required this.initialFilter});

  @override
  ConsumerState<_PropertyFilterSheet> createState() =>
      _PropertyFilterSheetState();
}

class _PropertyFilterSheetState extends ConsumerState<_PropertyFilterSheet> {
  final _minPriceController = TextEditingController();
  final _maxPriceController = TextEditingController();

  // Filter selections
  PropertyType? _selectedType;
  int? _minBedrooms;
  int? _minBathrooms;

  // Location cascade state
  List<Division> _divisions = const [];
  List<District> _districts = const [];
  List<Thana> _thanas = const [];
  int? _divisionId;
  int? _districtId;
  int? _thanaId;
  bool _loadingDivisions = true;

  bool get _isBengali =>
      Localizations.localeOf(context).languageCode == 'bn';

  @override
  void initState() {
    super.initState();
    final init = widget.initialFilter;
    _selectedType = init.type;
    _minBedrooms = init.minBedrooms;
    _minBathrooms = init.minBathrooms;
    _divisionId = init.divisionId;
    _districtId = init.districtId;
    _thanaId = init.thanaId;
    _minPriceController.text =
        init.minPrice?.round().toString() ?? '';
    _maxPriceController.text =
        init.maxPrice?.round().toString() ?? '';
    _loadDivisions();
  }

  @override
  void dispose() {
    _minPriceController.dispose();
    _maxPriceController.dispose();
    super.dispose();
  }

  // --- Location loading (division → district → thana) ------------------------

  Future<void> _loadDivisions() async {
    final repo = ref.read(locationRepositoryProvider);
    try {
      final list = await repo.getDivisions();
      if (!mounted) return;
      setState(() {
        _divisions = list;
        _loadingDivisions = false;
      });
      // Restore deeper levels if the caller passed a division.
      if (_divisionId != null) await _loadDistricts(_divisionId!);
    } catch (_) {
      if (!mounted) return;
      setState(() => _loadingDivisions = false);
    }
  }

  Future<void> _loadDistricts(int divisionId) async {
    final repo = ref.read(locationRepositoryProvider);
    try {
      final list = await repo.getDistrictsByDivision(divisionId);
      if (!mounted) return;
      setState(() {
        _districts = list;
        _divisionId = divisionId;
        _thanas = const [];
        _thanaId = null;
      });
      if (_districtId != null) await _loadThanas(_districtId!);
    } catch (_) {
      if (!mounted) return;
      setState(() {});
    }
  }

  Future<void> _loadThanas(int districtId) async {
    final repo = ref.read(locationRepositoryProvider);
    try {
      final list = await repo.getThanasByDistrict(districtId);
      if (!mounted) return;
      setState(() {
        _thanas = list;
        _districtId = districtId;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {});
    }
  }

  // --- Build ----------------------------------------------------------------}

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: AppSpacing.lg,
          right: AppSpacing.lg,
          top: AppSpacing.md,
          bottom: MediaQuery.of(context).viewInsets.bottom + AppSpacing.lg,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  Text(
                    l10n.filterTitle,
                    style: theme.textTheme.titleLarge,
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: _reset,
                    child: Text(l10n.filterReset),
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.md),

              // Property type
              _sectionTitle(l10n.filterPropertyType),
              _buildChoiceChips<PropertyType>(
                values: PropertyType.values,
                selected: _selectedType,
                labelOf: (type) => type.label(isBengali: _isBengali),
                onSelected: (value) =>
                    setState(() => _selectedType = value),
              ),
              SizedBox(height: AppSpacing.lg),

              // Bedrooms
              _sectionTitle(l10n.filterBedrooms),
              _buildChoiceChips<int>(
                values: [1, 2, 3, 4, 5],
                allowClear: true,
                selected: _minBedrooms,
                labelOf: (n) => '$n+',
                onSelected: (value) =>
                    setState(() => _minBedrooms = value),
              ),
              SizedBox(height: AppSpacing.lg),

              // Bathrooms
              _sectionTitle(l10n.filterBathrooms),
              _buildChoiceChips<int>(
                values: [1, 2, 3, 4],
                allowClear: true,
                selected: _minBathrooms,
                labelOf: (n) => '$n+',
                onSelected: (value) =>
                    setState(() => _minBathrooms = value),
              ),
              SizedBox(height: AppSpacing.lg),

              // Price range
              _sectionTitle(l10n.filterPriceRange),
              Row(
                children: [
                  Expanded(
                    child: AppTextField(
                      controller: _minPriceController,
                      label: l10n.filterMinPrice,
                      prefixIcon: Icons.payments_outlined,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: AppTextField(
                      controller: _maxPriceController,
                      label: l10n.filterMaxPrice,
                      prefixIcon: Icons.payments_outlined,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.lg),

              // Location cascade
              _sectionTitle(l10n.filterLocation),
              if (_loadingDivisions)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: AppSpacing.md),
                  child: Center(
                    child: SizedBox(
                      height: AppSpacing.iconMD,
                      width: AppSpacing.iconMD,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                )
              else ...[
                DropdownButtonFormField<int>(
                  initialValue: _divisions.any((d) => d.id == _divisionId)
                      ? _divisionId
                      : null,
                  decoration: InputDecoration(
                    labelText: l10n.filterDivision,
                    prefixIcon: const Icon(Icons.location_on_outlined),
                  ),
                  items: [
                    for (final d in _divisions)
                      DropdownMenuItem<int>(
                        value: d.id,
                        child: Text(
                          _isBengali ? d.nameBn : d.nameEn,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                  onChanged: (value) {
                    if (value != null) _loadDistricts(value);
                  },
                ),
                SizedBox(height: AppSpacing.sm),
                DropdownButtonFormField<int>(
                  initialValue:
                      _districts.any((d) => d.id == _districtId)
                          ? _districtId
                          : null,
                  decoration: InputDecoration(
                    labelText: l10n.filterDistrict,
                    prefixIcon: const Icon(Icons.place_outlined),
                  ),
                  items: [
                    for (final d in _districts)
                      DropdownMenuItem<int>(
                        value: d.id,
                        child: Text(
                          _isBengali ? d.nameBn : d.nameEn,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                  onChanged: (value) {
                    if (value != null) _loadThanas(value);
                  },
                ),
                SizedBox(height: AppSpacing.sm),
                DropdownButtonFormField<int>(
                  initialValue: _thanas.any((t) => t.id == _thanaId)
                      ? _thanaId
                      : null,
                  decoration: InputDecoration(
                    labelText: l10n.filterThana,
                    prefixIcon: const Icon(Icons.place_outlined),
                  ),
                  items: [
                    for (final t in _thanas)
                      DropdownMenuItem<int>(
                        value: t.id,
                        child: Text(
                          _isBengali ? t.nameBn : t.nameEn,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                  onChanged: (value) =>
                      setState(() => _thanaId = value),
                ),
              ],
              SizedBox(height: AppSpacing.lg),

              // Apply
              AppButton(
                label: l10n.filterApply,
                onPressed: () => Navigator.of(context).pop(_buildFilter()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }

  Widget _buildChoiceChips<T>({
    required List<T> values,
    required T? selected,
    required String Function(T) labelOf,
    required ValueChanged<T?> onSelected,
    bool allowClear = false,
  }) {
    return Wrap(
      spacing: AppSpacing.sm,
      runSpacing: AppSpacing.sm,
      children: [
        if (allowClear)
          ChoiceChip(
            label: const Text('Any'),
            selected: selected == null,
            onSelected: (_) => onSelected(null),
          ),
        for (final value in values)
          ChoiceChip(
            label: Text(labelOf(value)),
            selected: selected == value,
            onSelected: (_) => onSelected(value),
          ),
      ],
    );
  }

  void _reset() {
    setState(() {
      _selectedType = null;
      _minBedrooms = null;
      _minBathrooms = null;
      _divisionId = null;
      _districtId = null;
      _thanaId = null;
      _districts = const [];
      _thanas = const [];
      _minPriceController.clear();
      _maxPriceController.clear();
    });
  }

  PropertyFilter _buildFilter() {
    final minPrice = double.tryParse(_minPriceController.text.trim());
    final maxPrice = double.tryParse(_maxPriceController.text.trim());
    return PropertyFilter(
      query: widget.initialFilter.query,
      type: _selectedType,
      minPrice: minPrice,
      maxPrice: maxPrice,
      minBedrooms: _minBedrooms,
      minBathrooms: _minBathrooms,
      divisionId: _divisionId,
      districtId: _districtId,
      thanaId: _thanaId,
    );
  }
}
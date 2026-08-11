import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'core/config/app_config.dart';

class LocationFilterScreen extends StatefulWidget {
  const LocationFilterScreen({super.key});

  @override
  State<LocationFilterScreen> createState() => _LocationFilterScreenState();
}

class _LocationFilterScreenState extends State<LocationFilterScreen> {
  String get baseUrl => AppConfig.locationBase;

  // 2. State Memory Pools (Equivalents to Kotlin MutableLists)
  List<dynamic> bivags = [];
  List<dynamic> jelas = [];
  List<dynamic> thanas = [];

  // 3. Track currently selected Database IDs (null means nothing selected yet)
  int? selectedBivagId;
  int? selectedJelaId;
  int? selectedThanaId;

  // 4. Lifecyle Trigger: Runs automatically when this screen first boots up
  @override
  void initState() {
    super.initState();
    fetchBivags();
  }

  // --- NETWORK METHODS (Calling your Kotlin Backend) ---

  Future<void> fetchBivags() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/bivags'));
      if (response.statusCode == 200) {
        setState(() {
          bivags = json.decode(response.body);
        });
      }
    } catch (e) {
      debugPrint("Error loading bivags: $e");
    }
  }

  Future<void> fetchJelas(int bivagId) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/jelas?divId=$bivagId'));
      if (response.statusCode == 200) {
        setState(() {
          jelas = json.decode(response.body);
        });
      }
    } catch (e) {
      debugPrint("Error loading jelas: $e");
    }
  }

  Future<void> fetchThanas(int jelaId) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/thanas?distId=$jelaId'));
      if (response.statusCode == 200) {
        setState(() {
          thanas = json.decode(response.body);
        });
      }
    } catch (e) {
      debugPrint("Error loading thanas: $e");
    }
  }

  // --- THE VISUAL UI LAYOUT ---
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Basa Khujo - Locations")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // DROPDOWN 1: BIVAG
            DropdownButtonFormField<int>(
              decoration: const InputDecoration(labelText: "Select Division"),
              value: selectedBivagId,
              items: bivags.map((bivag) {
                return DropdownMenuItem<int>(
                  value: bivag['id'],
                  child: Text("${bivag['bivNam']} (${bivag['bivBnNam']})"),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    selectedBivagId = value;
                    selectedJelaId = null; // Clear old child selections
                    selectedThanaId = null;
                    jelas = [];
                    thanas = [];
                  });
                  fetchJelas(value); // Hit Kotlin server for secondary data
                }
              },
            ),
            const SizedBox(height: 20),

            // DROPDOWN 2: JELA
            DropdownButtonFormField<int>(
              decoration: const InputDecoration(labelText: "Select District"),
              value: selectedJelaId,
              items: jelas.isEmpty ? null : jelas.map((jela) {
                return DropdownMenuItem<int>(
                  value: jela['id'],
                  child: Text("${jela['jelaNam']} (${jela['jelaBnNam']})"),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    selectedJelaId = value;
                    selectedThanaId = null;
                    thanas = [];
                  });
                  fetchThanas(value); // Hit Kotlin server for tertiary data
                }
              },
            ),
            const SizedBox(height: 20),

            // DROPDOWN 3: THANA
            DropdownButtonFormField<int>(
              decoration: const InputDecoration(labelText: "Select Thana"),
              value: selectedThanaId,
              items: thanas.isEmpty ? null : thanas.map((thana) {
                return DropdownMenuItem<int>(
                  value: thana['id'],
                  child: Text("${thana['thanaNam']} (${thana['thanaBnNam']})"),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedThanaId = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
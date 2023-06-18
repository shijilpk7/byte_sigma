import 'dart:convert';

import 'package:byte_sigma/models/services/local/team_details_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;

class CommonDataViewModel extends ChangeNotifier {
  CommonDataViewModel();

  TeamDetails? _teamDetails;
  TeamDetails? get teamDetails => _teamDetails;

  Future<void> loadJsonData() async {
    String jsonString =
        await rootBundle.loadString('assets/flutter_sytem_test_2.json');
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    _teamDetails = TeamDetails.fromJson(jsonData);
  }
}

import 'dart:convert';

import 'package:byte_sigma/models/services/local/team_details_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;

class CommonDataViewModel extends ChangeNotifier {
  CommonDataViewModel();

  List<TeamDetails>? _teamDetails;
  List<TeamDetails>? get teamDetails => _teamDetails;

  Future<void> loadJsonData() async {
    String jsonString =
        await rootBundle.loadString('assets/flutter_sytem_test_2.json');
    Map<String, dynamic> jsonData = jsonDecode(jsonString);

    // Access the data from the JSON object
    Map<String, dynamic> responseData = jsonData['responseData'];
    Map<String, dynamic> result = responseData['result'];
    List<dynamic> odiTeams = result['odiTeams'];
    List<dynamic> testTeams = result['testTeams'];
    List<dynamic> t20Teams = result['t20Teams'];
    List<dynamic> odiBatsman = result['odiBatsman'];
    List<dynamic> odiBowler = result['odiBowler'];
    List<dynamic> odiAllRounder = result['odiAllRounder'];
    List<dynamic> testBatsman = result['testBatsman'];
    List<dynamic> testBowler = result['testBowler'];
    List<dynamic> testAllRounder = result['testAllRounder'];
    List<dynamic> t20Batsman = result['t20Batsman'];
    List<dynamic> t20Bowler = result['t20Bowler'];
    List<dynamic> t20AllRounder = result['t20AllRounder'];

    print(
        '....${testTeams.first['team_name']}........................11.....$odiTeams');
  }
}

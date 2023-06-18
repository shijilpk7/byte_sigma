class TeamDetails {
  int? statusCode;
  ResponseData? responseData;

  TeamDetails({this.statusCode, this.responseData});

  TeamDetails.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    responseData = json['responseData'] != null
        ? ResponseData.fromJson(json['responseData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    if (responseData != null) {
      data['responseData'] = responseData!.toJson();
    }
    return data;
  }
}

class ResponseData {
  String? message;
  Result? result;

  ResponseData({this.message, this.result});

  ResponseData.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (result != null) {
      data['result'] = result!.toJson();
    }
    return data;
  }
}

class Result {
  List<OdiTeams>? odiTeams;
  List<OdiTeams>? testTeams;
  List<OdiTeams>? t20Teams;
  List<OdiBatsman>? odiBatsman;
  List<OdiBatsman>? odiBowler;
  List<OdiBatsman>? odiAllRounder;
  List<OdiBatsman>? testBatsman;
  List<OdiBatsman>? testBowler;
  List<OdiBatsman>? testAllRounder;
  List<OdiBatsman>? t20Batsman;
  List<OdiBatsman>? t20Bowler;
  List<OdiBatsman>? t20AllRounder;

  Result(
      {this.odiTeams,
      this.testTeams,
      this.t20Teams,
      this.odiBatsman,
      this.odiBowler,
      this.odiAllRounder,
      this.testBatsman,
      this.testBowler,
      this.testAllRounder,
      this.t20Batsman,
      this.t20Bowler,
      this.t20AllRounder});

  Result.fromJson(Map<String, dynamic> json) {
    if (json['odiTeams'] != null) {
      odiTeams = <OdiTeams>[];
      json['odiTeams'].forEach((v) {
        odiTeams!.add(OdiTeams.fromJson(v));
      });
    }
    if (json['testTeams'] != null) {
      testTeams = <OdiTeams>[];
      json['testTeams'].forEach((v) {
        testTeams!.add(OdiTeams.fromJson(v));
      });
    }
    if (json['t20Teams'] != null) {
      t20Teams = <OdiTeams>[];
      json['t20Teams'].forEach((v) {
        t20Teams!.add(OdiTeams.fromJson(v));
      });
    }
    if (json['odiBatsman'] != null) {
      odiBatsman = <OdiBatsman>[];
      json['odiBatsman'].forEach((v) {
        odiBatsman!.add(OdiBatsman.fromJson(v));
      });
    }
    if (json['odiBowler'] != null) {
      odiBowler = <OdiBatsman>[];
      json['odiBowler'].forEach((v) {
        odiBowler!.add(OdiBatsman.fromJson(v));
      });
    }
    if (json['odiAllRounder'] != null) {
      odiAllRounder = <OdiBatsman>[];
      json['odiAllRounder'].forEach((v) {
        odiAllRounder!.add(OdiBatsman.fromJson(v));
      });
    }
    if (json['testBatsman'] != null) {
      testBatsman = <OdiBatsman>[];
      json['testBatsman'].forEach((v) {
        testBatsman!.add(OdiBatsman.fromJson(v));
      });
    }
    if (json['testBowler'] != null) {
      testBowler = <OdiBatsman>[];
      json['testBowler'].forEach((v) {
        testBowler!.add(OdiBatsman.fromJson(v));
      });
    }
    if (json['testAllRounder'] != null) {
      testAllRounder = <OdiBatsman>[];
      json['testAllRounder'].forEach((v) {
        testAllRounder!.add(OdiBatsman.fromJson(v));
      });
    }
    if (json['t20Batsman'] != null) {
      t20Batsman = <OdiBatsman>[];
      json['t20Batsman'].forEach((v) {
        t20Batsman!.add(OdiBatsman.fromJson(v));
      });
    }
    if (json['t20Bowler'] != null) {
      t20Bowler = <OdiBatsman>[];
      json['t20Bowler'].forEach((v) {
        t20Bowler!.add(OdiBatsman.fromJson(v));
      });
    }
    if (json['t20AllRounder'] != null) {
      t20AllRounder = <OdiBatsman>[];
      json['t20AllRounder'].forEach((v) {
        t20AllRounder!.add(OdiBatsman.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (odiTeams != null) {
      data['odiTeams'] = odiTeams!.map((v) => v.toJson()).toList();
    }
    if (testTeams != null) {
      data['testTeams'] = testTeams!.map((v) => v.toJson()).toList();
    }
    if (t20Teams != null) {
      data['t20Teams'] = t20Teams!.map((v) => v.toJson()).toList();
    }
    if (odiBatsman != null) {
      data['odiBatsman'] = odiBatsman!.map((v) => v.toJson()).toList();
    }
    if (odiBowler != null) {
      data['odiBowler'] = odiBowler!.map((v) => v.toJson()).toList();
    }
    if (odiAllRounder != null) {
      data['odiAllRounder'] = odiAllRounder!.map((v) => v.toJson()).toList();
    }
    if (testBatsman != null) {
      data['testBatsman'] = testBatsman!.map((v) => v.toJson()).toList();
    }
    if (testBowler != null) {
      data['testBowler'] = testBowler!.map((v) => v.toJson()).toList();
    }
    if (testAllRounder != null) {
      data['testAllRounder'] = testAllRounder!.map((v) => v.toJson()).toList();
    }
    if (t20Batsman != null) {
      data['t20Batsman'] = t20Batsman!.map((v) => v.toJson()).toList();
    }
    if (t20Bowler != null) {
      data['t20Bowler'] = t20Bowler!.map((v) => v.toJson()).toList();
    }
    if (t20AllRounder != null) {
      data['t20AllRounder'] = t20AllRounder!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OdiTeams {
  String? teamName;
  int? position;
  int? points;
  int? rating;
  int? matches;
  int? matchType;
  int? status;

  OdiTeams(
      {this.teamName,
      this.position,
      this.points,
      this.rating,
      this.matches,
      this.matchType,
      this.status});

  OdiTeams.fromJson(Map<String, dynamic> json) {
    teamName = json['team_name'];
    position = json['position'];
    points = json['points'];
    rating = json['rating'];
    matches = json['matches'];
    matchType = json['match_type'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['team_name'] = teamName;
    data['position'] = position;
    data['points'] = points;
    data['rating'] = rating;
    data['matches'] = matches;
    data['match_type'] = matchType;
    data['status'] = status;
    return data;
  }
}

class OdiBatsman {
  String? playerName;
  int? position;
  int? points;
  String? team;
  int? matchType;
  int? playerType;
  int? status;

  OdiBatsman(
      {this.playerName,
      this.position,
      this.points,
      this.team,
      this.matchType,
      this.playerType,
      this.status});

  OdiBatsman.fromJson(Map<String, dynamic> json) {
    playerName = json['player_name'];
    position = json['position'];
    points = json['points'];
    team = json['team'];
    matchType = json['match_type'];
    playerType = json['player_type'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['player_name'] = playerName;
    data['position'] = position;
    data['points'] = points;
    data['team'] = team;
    data['match_type'] = matchType;
    data['player_type'] = playerType;
    data['status'] = status;
    return data;
  }
}

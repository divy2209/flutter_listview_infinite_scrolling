/*class DataModel {
  int totalRecords;
  List<Radio> data;

  DataModel({
    this.totalRecords,
    this.data,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      totalRecords: int.parse(json['Message']),
      data: (json["Data"] as List).map((i) => Radio.fromJson(i)).toList()
    );
  }
}

class Radio {
  final int id;
  final String radioName;

  Radio({
    this.id,
    this.radioName,
  });

  factory Radio.fromJson(Map<String, dynamic> json) {
    return Radio(
      id: json["ID"],
      radioName: json['RadioName'],
    );
  }
}
*/
// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

/*import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  DataModel({
    this.count,
    this.entries,
  });

  int count;
  List<Entry> entries;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
    count: json["count"],
    entries: List<Entry>.from(json["entries"].map((x) => Entry.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "entries": List<dynamic>.from(entries.map((x) => x.toJson())),
  };
}

class Entry {
  Entry({
    this.api,
    this.description,
    this.auth,
    this.https,
    this.cors,
    this.link,
    this.category,
  });

  String api;
  String description;
  Auth auth;
  bool https;
  Cors cors;
  String link;
  String category;

  factory Entry.fromJson(Map<String, dynamic> json) => Entry(
    api: json["API"],
    description: json["Description"],
    auth: authValues.map[json["Auth"]],
    https: json["HTTPS"],
    cors: corsValues.map[json["Cors"]],
    link: json["Link"],
    category: json["Category"],
  );

  Map<String, dynamic> toJson() => {
    "API": api,
    "Description": description,
    "Auth": authValues.reverse[auth],
    "HTTPS": https,
    "Cors": corsValues.reverse[cors],
    "Link": link,
    "Category": category,
  };
}

enum Auth { EMPTY, API_KEY, O_AUTH, X_MASHAPE_KEY, USER_AGENT }

final authValues = EnumValues({
  "apiKey": Auth.API_KEY,
  "": Auth.EMPTY,
  "OAuth": Auth.O_AUTH,
  "User-Agent": Auth.USER_AGENT,
  "X-Mashape-Key": Auth.X_MASHAPE_KEY
});

enum Cors { UNKNOWN, NO, YES }

final corsValues = EnumValues({
  "no": Cors.NO,
  "unknown": Cors.UNKNOWN,
  "yes": Cors.YES
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}*/

// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  DataModel({
    this.code,
    this.data,
    this.success,
  });

  int code;
  Data data;
  bool success;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
    code: json["code"],
    data: Data.fromJson(json["data"]),
    success: json["success"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "data": data.toJson(),
    "success": success,
  };
}

class Data {
  Data({
    this.cursor,
    this.tournamentCount,
    this.tournaments,
    this.isLastBatch,
  });

  String cursor;
  dynamic tournamentCount;
  List<Tournament> tournaments;
  bool isLastBatch;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    cursor: json["cursor"],
    tournamentCount: json["tournament_count"],
    tournaments: List<Tournament>.from(json["tournaments"].map((x) => Tournament.fromJson(x))),
    isLastBatch: json["is_last_batch"],
  );

  Map<String, dynamic> toJson() => {
    "cursor": cursor,
    "tournament_count": tournamentCount,
    "tournaments": List<dynamic>.from(tournaments.map((x) => x.toJson())),
    "is_last_batch": isLastBatch,
  };
}

class Tournament {
  Tournament({
    this.isCheckInRequired,
    this.tournamentId,
    this.tournamentEnded,
    this.tournamentEndDate,
    this.areRandomTeamsAllowed,
    this.registeredTeams,
    this.adminLocale,
    this.regEndDate,
    this.startDate,
    this.rules,
    this.maxTeams,
    this.tournamentUrl,
    this.prizes,
    this.matchStyleType,
    this.pwaUrl,
    this.tournamentType,
    this.geo,
    this.maxLevelId,
    this.isPasswordRequired,
    this.name,
    this.matchStyle,
    this.registrationUrl,
    this.gamePkg,
    this.isRegistrationOpen,
    this.isWaitlistEnabled,
    this.incompleteTeamsAllowed,
    this.isAutoResultAllowed,
    this.teamSize,
    this.status,
    this.isLevelsEnabled,
    this.indexPage,
    this.dynamicAppUrl,
    this.minLevelId,
    this.gameFormat,
    this.details,
    this.gameIconUrl,
    this.regStartDate,
    this.coverUrl,
    this.bracketsUrl,
    this.tournamentSlug,
    this.discordUrl,
    this.gameId,
    this.resultSubmissionByAdmin,
    this.country,
    this.adminUsername,
    this.gameName,
    this.streamUrl,
  });

  bool isCheckInRequired;
  String tournamentId;
  bool tournamentEnded;
  String tournamentEndDate;
  bool areRandomTeamsAllowed;
  int registeredTeams;
  String adminLocale;
  String regEndDate;
  String startDate;
  String rules;
  int maxTeams;
  String tournamentUrl;
  String prizes;
  String matchStyleType;
  dynamic pwaUrl;
  String tournamentType;
  String geo;
  dynamic maxLevelId;
  bool isPasswordRequired;
  String name;
  String matchStyle;
  String registrationUrl;
  dynamic gamePkg;
  bool isRegistrationOpen;
  bool isWaitlistEnabled;
  bool incompleteTeamsAllowed;
  bool isAutoResultAllowed;
  int teamSize;
  String status;
  bool isLevelsEnabled;
  bool indexPage;
  String dynamicAppUrl;
  dynamic minLevelId;
  String gameFormat;
  String details;
  String gameIconUrl;
  String regStartDate;
  String coverUrl;
  dynamic bracketsUrl;
  String tournamentSlug;
  String discordUrl;
  String gameId;
  bool resultSubmissionByAdmin;
  String country;
  String adminUsername;
  String gameName;
  String streamUrl;

  factory Tournament.fromJson(Map<String, dynamic> json) => Tournament(
    isCheckInRequired: json["is_check_in_required"],
    tournamentId: json["tournament_id"],
    tournamentEnded: json["tournament_ended"],
    tournamentEndDate: json["tournament_end_date"],
    areRandomTeamsAllowed: json["are_random_teams_allowed"],
    registeredTeams: json["registered_teams"],
    adminLocale: json["admin_locale"],
    regEndDate: json["reg_end_date"],
    startDate: json["start_date"],
    rules: json["rules"],
    maxTeams: json["max_teams"],
    tournamentUrl: json["tournament_url"],
    prizes: json["prizes"],
    matchStyleType: json["match_style_type"],
    pwaUrl: json["pwa_url"],
    tournamentType: json["tournament_type"],
    geo: json["geo"],
    maxLevelId: json["max_level_id"],
    isPasswordRequired: json["is_password_required"],
    name: json["name"],
    matchStyle: json["match_style"],
    registrationUrl: json["registration_url"],
    gamePkg: json["game_pkg"],
    isRegistrationOpen: json["is_registration_open"],
    isWaitlistEnabled: json["is_waitlist_enabled"],
    incompleteTeamsAllowed: json["incomplete_teams_allowed"],
    isAutoResultAllowed: json["is_auto_result_allowed"],
    teamSize: json["team_size"],
    status: json["status"],
    isLevelsEnabled: json["is_levels_enabled"],
    indexPage: json["index_page"],
    dynamicAppUrl: json["dynamic_app_url"],
    minLevelId: json["min_level_id"],
    gameFormat: json["game_format"],
    details: json["details"],
    gameIconUrl: json["game_icon_url"],
    regStartDate: json["reg_start_date"],
    coverUrl: json["cover_url"],
    bracketsUrl: json["brackets_url"],
    tournamentSlug: json["tournament_slug"],
    discordUrl: json["discord_url"],
    gameId: json["game_id"],
    resultSubmissionByAdmin: json["result_submission_by_admin"],
    country: json["country"],
    adminUsername: json["admin_username"],
    gameName: json["game_name"],
    streamUrl: json["stream_url"],
  );

  Map<String, dynamic> toJson() => {
    "is_check_in_required": isCheckInRequired,
    "tournament_id": tournamentId,
    "tournament_ended": tournamentEnded,
    "tournament_end_date": tournamentEndDate,
    "are_random_teams_allowed": areRandomTeamsAllowed,
    "registered_teams": registeredTeams,
    "admin_locale": adminLocale,
    "reg_end_date": regEndDate,
    "start_date": startDate,
    "rules": rules,
    "max_teams": maxTeams,
    "tournament_url": tournamentUrl,
    "prizes": prizes,
    "match_style_type": matchStyleType,
    "pwa_url": pwaUrl,
    "tournament_type": tournamentType,
    "geo": geo,
    "max_level_id": maxLevelId,
    "is_password_required": isPasswordRequired,
    "name": name,
    "match_style": matchStyle,
    "registration_url": registrationUrl,
    "game_pkg": gamePkg,
    "is_registration_open": isRegistrationOpen,
    "is_waitlist_enabled": isWaitlistEnabled,
    "incomplete_teams_allowed": incompleteTeamsAllowed,
    "is_auto_result_allowed": isAutoResultAllowed,
    "team_size": teamSize,
    "status": status,
    "is_levels_enabled": isLevelsEnabled,
    "index_page": indexPage,
    "dynamic_app_url": dynamicAppUrl,
    "min_level_id": minLevelId,
    "game_format": gameFormat,
    "details": details,
    "game_icon_url": gameIconUrl,
    "reg_start_date": regStartDate,
    "cover_url": coverUrl,
    "brackets_url": bracketsUrl,
    "tournament_slug": tournamentSlug,
    "discord_url": discordUrl,
    "game_id": gameId,
    "result_submission_by_admin": resultSubmissionByAdmin,
    "country": country,
    "admin_username": adminUsername,
    "game_name": gameName,
    "stream_url": streamUrl,
  };
}


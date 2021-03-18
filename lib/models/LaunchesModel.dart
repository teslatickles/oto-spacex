class LaunchResponse {
  List<Launch> results;

  LaunchResponse({this.results});

  LaunchResponse.fromJson(Map<String, dynamic> json) {
    if (json.length > 1) {
      results = new List<Launch>();

      results.add(new Launch(
        autoUpdate: json['autoUpdate'],
        capsules: json['capsules'],
        cores: json['cores'],
        crew: json['crew'],
        dateLocal: json['dateLocal'],
        datePrecision: json['datePrecision'],
        dateUtc: json['dateUtc'],
        details: json['details'],
        failures: json['failures'],
        fairings: json['fairings'],
        flightNumber: json['flightNumber'],
        id: json['id'],
        launchLibraryId: json['launchLibraryId'],
        launchpad: json['launchpad'],
        links: json['links'],
        name: json['name'],
        net: json['net'],
        payloads: json['payloads'],
        rocket: json['rocket'],
        ships: json['ships'],
        staticFireDateUnix: json['staticFireDateUnix'],
        staticFireDateUtc: json['staticFireDateUtc'],
        success: json['success'],
        tbd: json['tbd'],
        upcoming: json['upcoming'],
        window: json['window'],
      ));
    }
  }

  Map<String, dynamic> toJson() => {
        'results': results,
      };
}

class Launch {
  String id;
  Object fairings;
  Object links;
  String staticFireDateUtc;
  double staticFireDateUnix;
  bool tbd;
  bool net;
  int window;
  String rocket;
  bool success;
  String details;
  List<dynamic> crew;
  List<dynamic> ships;
  List<dynamic> capsules;
  List<dynamic> payloads;
  String launchpad;
  bool autoUpdate;
  String launchLibraryId;
  List<dynamic> failures;
  int flightNumber;
  String name;
  String dateUtc;
  String dateLocal;
  String datePrecision;
  bool upcoming;
  List<dynamic> cores;

  Launch({
    this.id,
    this.fairings,
    this.links,
    this.staticFireDateUtc,
    this.staticFireDateUnix,
    this.tbd,
    this.net,
    this.window,
    this.rocket,
    this.success,
    this.details,
    this.crew,
    this.ships,
    this.capsules,
    this.payloads,
    this.launchpad,
    this.autoUpdate,
    this.launchLibraryId,
    this.failures,
    this.flightNumber,
    this.name,
    this.dateUtc,
    this.dateLocal,
    this.datePrecision,
    this.upcoming,
    this.cores,
  });

  Launch.fromJson(Map<String, dynamic> launchJson)
      : id = launchJson['id'],
        fairings = launchJson['fairings'],
        links = launchJson['links'],
        staticFireDateUtc = launchJson['staticFireDateUtc'],
        staticFireDateUnix = launchJson['staticFireDateUnix'],
        tbd = launchJson['tbd'],
        net = launchJson['net'],
        window = launchJson['window'],
        rocket = launchJson['rocket'],
        success = launchJson['success'],
        details = launchJson['details'],
        crew = launchJson['crew'],
        ships = launchJson['ships'],
        capsules = launchJson['capsules'],
        payloads = launchJson['payloads'],
        launchpad = launchJson['launchpad'],
        autoUpdate = launchJson['autoUpdate'],
        launchLibraryId = launchJson['launchLibraryId'],
        failures = launchJson['failures'],
        flightNumber = launchJson['flightNumber'],
        name = launchJson['name'],
        dateUtc = launchJson['dateUtc'],
        dateLocal = launchJson['dateLocal'],
        datePrecision = launchJson['datePrecision'],
        upcoming = launchJson['upcoming'],
        cores = launchJson['cores'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'fairings': fairings,
        'links': links,
        'staticFireDateUtc': staticFireDateUtc,
        'staticFireDateUnix': staticFireDateUnix,
        'tbd': tbd,
        'net': net,
        'window': window,
        'rocket': rocket,
        'success': success,
        'details': details,
        'crew': crew,
        'ships': ships,
        'capsules': capsules,
        'payloads': payloads,
        'launchpad': launchpad,
        'autoUpdate': autoUpdate,
        'launchLibraryId': launchLibraryId,
        'failures': failures,
        'flightNumber': flightNumber,
        'name': name,
        'dateUtc': dateUtc,
        'dateLocal': dateLocal,
        'datePrecision': datePrecision,
        'upcoming': upcoming,
        'cores': cores,
      };
}

class Fairing {
  bool reused;
  bool recoveryAttempt;
  bool recovered;
  List<dynamic> ships;

  Fairing({this.reused, this.recovered, this.recoveryAttempt, this.ships});

  Fairing.fromJson(Map<String, dynamic> fairingJson) {
    reused = fairingJson['reused'];
    recoveryAttempt = fairingJson['recoveryAttempt'];
    recovered = fairingJson['recovered'];
    var shipsFromJson = fairingJson['ships'];
    ships = new List<dynamic>.from(shipsFromJson);
  }
  Map<String, dynamic> toJson() => {
        'reused': reused,
        'recoveryAttempt': recoveryAttempt,
        'recovered': recovered,
        'ships': ships,
      };
}

class Links {
  Object patch;
  Object reddit;
  Object flickr;
  Object presskit;
  Object webcast;
  Object youtubeId;
  Object article;
  Object wikipedia;

  Links({
    this.patch,
    this.reddit,
    this.flickr,
    this.presskit,
    this.webcast,
    this.youtubeId,
    this.article,
    this.wikipedia,
  });

  Links.fromJson(Map<String, dynamic> linksJson) {
    patch = linksJson['patch'];
    reddit = linksJson['reddit'];
    flickr = linksJson['flickr'];
    presskit = linksJson['presskit'];
    webcast = linksJson['webcast'];
    youtubeId = linksJson['youtubeId'];
    article = linksJson['article'];
    wikipedia = linksJson['wikipedia'];
  }
  Map<String, dynamic> toJson() => {
        'patch': patch,
        'reddit': reddit,
        'flickr': flickr,
        'presskit': presskit,
        'webcast': webcast,
        'youtubeId': youtubeId,
        'article': article,
        'wikipedia': wikipedia,
      };
}

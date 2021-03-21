import 'dart:async';
import 'package:oto/ApiBaseHelper.dart';
import 'models/Launch.dart';

class LaunchRepository {
  ApiBaseHelper _helper = ApiBaseHelper();
  List<dynamic> response;
  List<Launch> launchList;

  Future<List<Launch>> fetchLaunches() async {
    final response = await _helper.get("launches");

    List<Launch> launchList = <Launch>[];
    response.forEach((r) => launchList.add(Launch.fromJson(r)));

    return launchList;
  }
}

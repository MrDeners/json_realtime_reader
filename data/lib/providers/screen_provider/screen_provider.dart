import 'dart:convert';

import 'package:data/providers/screen_provider/constants/json_constants.dart';
import 'package:flutter/services.dart';

class ScreenProvider {
  Future<Map<String, dynamic>> getScreenComponents() async {
    final String response = await rootBundle.loadString(JsonConstants.jsonScreenKey);
    final Map<String, dynamic> data = json.decode(response);

    return data;
  }
}

import 'package:dio/dio.dart';

class Constants {
  static String kBaseUrl = "";

  static String kApiKey = "";

  static Options kOptions = Options(headers: {});

  static Map<String, dynamic> kqueryParameters = {};

  static List<String> provisionalOptions = [
    "Option 1",
    "Option 2",
    "Option 3",
  ];

  static List<String> provisionalSexualOptions = [
    "Option 1",
    "Option 2",
    "Option 3",
  ];
}

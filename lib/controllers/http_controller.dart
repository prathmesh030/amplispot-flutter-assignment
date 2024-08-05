import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/task_data_dto/task_data_dto.dart';

class HttpController {
  static Future<TaskDataDto?> getJsonData() async {
    TaskDataDto? taskDataDto;

    try {
      final response = await http.get(Uri.parse(
          'https://assignment-amplispot.s3.eu-north-1.amazonaws.com/flutter_task.json'));

      if (response.statusCode == 200 && response.body.isNotEmpty) {
        Map<String, dynamic> resData = jsonDecode(response.body);
        taskDataDto = TaskDataDto.fromJson(resData['data']);
      }

      return taskDataDto;
    } catch (e) {
      return taskDataDto;
    }
  }
}

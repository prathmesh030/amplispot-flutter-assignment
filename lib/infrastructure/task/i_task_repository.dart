import 'dart:convert';

import '../../domain/task/task_repository.dart';
import '../dtos/task_data_dto/task_data_dto.dart';
import 'package:http/http.dart' as http;

class ITaskRepository extends TaskRepository {
  final String apiUrl;

  ITaskRepository({
    required this.apiUrl,
  });

  @override
  Future<TaskDataDto?> getTaskData() async {
    TaskDataDto? taskDataDto;

    try {
      final response = await http.get(Uri.parse(
        apiUrl,
      ));

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

import '../../infrastructure/dtos/task_data_dto/task_data_dto.dart';

abstract class TaskRepository {
  
  Future<TaskDataDto?> getTaskData();
}
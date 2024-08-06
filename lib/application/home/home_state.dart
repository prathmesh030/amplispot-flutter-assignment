part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool isSuccess,
    required bool isFailure,
    required bool isToggleCustomize,
    required String msg,
    required bool isDownloading,
    required WidgetsToImageController widgetsToImageController,
    required TaskRepository taskRepository,
    TaskDataDto? taskDataDto,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        isLoading: false,
        isSuccess: false,
        isFailure: false,
        isDownloading: false,
        msg: '',
        isToggleCustomize: false,
        taskRepository: ITaskRepository(apiUrl: APIConstants.apiUrl,),
        widgetsToImageController: WidgetsToImageController(),
        
      );
}

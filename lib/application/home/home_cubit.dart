import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

import '../../domain/core/constants/api_constants.dart';
import '../../domain/task/task_repository.dart';
import '../../infrastructure/dtos/task_data_dto/task_data_dto.dart';
import '../../infrastructure/task/i_task_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(super.initialState);

  void init() async {
    onLoad();
  }

  void onLoad() async {
    emit(state.copyWith(isLoading: true));

    final res = await state.taskRepository.getTaskData();

    emit(state.copyWith(isLoading: false, taskDataDto: res));
  }

// toggle customize
  void toggleToCustomizeImg() {
    emit(state.copyWith(
      isToggleCustomize: !state.isToggleCustomize,
    ));
  }

// download
  void downloadCustomizeImg() async {
    emit(state.copyWith(
      isDownloading: true,
    ));

    final ss = await state.widgetsToImageController.capture();

    if (ss != null) {
      await ImageGallerySaver.saveImage(ss);
      emit(state.copyWith(
        isDownloading: false,
        isSuccess: true,
        msg: 'Image downloaded & saved to gallery!',
      ));
    } else {
      emit(state.copyWith(
        isDownloading: false,
        isFailure: true,
        msg: 'Failed to download image, Please try again!',
      ));
    }
  }

  void emitFromAnywhere({required HomeState state}) {
    emit(state);
  }
}

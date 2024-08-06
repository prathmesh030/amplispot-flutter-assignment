import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

import '../../application/home/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/core/helpers/generic_helpers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(HomeState.initial())..init(),
      child: const HomeConsumer(),
    );
  }
}

class HomeConsumer extends StatelessWidget {
  const HomeConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        final homeCubit = context.read<HomeCubit>();

        if (state.isSuccess) {
          if (state.msg.isNotEmpty) {
            GenericHelpers.showFlushBar(context: context, msg: state.msg);
          }
          homeCubit.emitFromAnywhere(
              state: state.copyWith(isSuccess: false, msg: ''));
        } else if (state.isFailure) {
          if (state.msg.isNotEmpty) {
            GenericHelpers.showFlushBar(
              context: context,
              msg: state.msg,
              isFailure: true,
            );
          }
          homeCubit.emitFromAnywhere(
              state: state.copyWith(isFailure: false, msg: ''));
        }
      },
      builder: (context, state) {
        final homeCubit = context.read<HomeCubit>();
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text(
              'Amplispot',
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : state.taskDataDto == null
                  ? const Center(child: Text('No Display Image!'))
                  : ModalProgressHUD(
                      inAsyncCall: state.isDownloading,
                      child: Column(
                        children: <Widget>[
                          WidgetsToImage(
                            controller: state.widgetsToImageController,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Image.network(
                                  state.taskDataDto!.media,
                                  width: MediaQuery.of(context).size.width,
                                ),
                                if (state.isToggleCustomize)
                                  Positioned(
                                    top: GenericHelpers.getDynamicViewPos(
                                      context,
                                      val: state.taskDataDto!
                                          .customizationSettings[0].configs.top
                                          .toDouble(),
                                    ),
                                    left: GenericHelpers.getDynamicViewPos(
                                      context,
                                      isWidth: true,
                                      val: state.taskDataDto!
                                          .customizationSettings[0].configs.left
                                          .toDouble(),
                                    ),
                                    child: Image.network(
                                      state.taskDataDto!
                                          .customizationSettings[0].value,
                                      height: state
                                          .taskDataDto!
                                          .customizationSettings[0]
                                          .configs
                                          .dimensions!
                                          .height
                                          .toDouble(),
                                      width: state
                                          .taskDataDto!
                                          .customizationSettings[0]
                                          .configs
                                          .dimensions!
                                          .width
                                          .toDouble(),
                                    ),
                                  ),
                                if (state.isToggleCustomize)
                                  Positioned(
                                    top: GenericHelpers.getDynamicViewPos(
                                      context,
                                      val: state.taskDataDto!
                                          .customizationSettings[1].configs.top
                                          .toDouble(),
                                    ),
                                    left: GenericHelpers.getDynamicViewPos(
                                      context,
                                      val: state.taskDataDto!
                                          .customizationSettings[1].configs.left
                                          .toDouble(),
                                      isWidth: true,
                                    ),
                                    child: Text(
                                      state.taskDataDto!
                                          .customizationSettings[1].value,
                                      textAlign: GenericHelpers.getTextAlign(
                                          state
                                              .taskDataDto!
                                              .customizationSettings[1]
                                              .configs
                                              .allignment
                                              .value),
                                      style: TextStyle(
                                        color: GenericHelpers.getFontColor(state
                                            .taskDataDto!
                                            .customizationSettings[1]
                                            .configs
                                            .fontColor),
                                        fontWeight:
                                            GenericHelpers.getFontWeight(state
                                                .taskDataDto!
                                                .customizationSettings[1]
                                                .configs
                                                .fontWeight
                                                .value),
                                        fontFamily: state
                                            .taskDataDto!
                                            .customizationSettings[2]
                                            .configs
                                            .fontStyle
                                            .name,
                                        fontSize: state
                                            .taskDataDto!
                                            .customizationSettings[1]
                                            .configs
                                            .fontSize
                                            .toDouble(),
                                      ),
                                    ),
                                  ),
                                if (state.isToggleCustomize)
                                  Positioned(
                                    top: GenericHelpers.getDynamicViewPos(
                                      context,
                                      val: state.taskDataDto!
                                          .customizationSettings[2].configs.top
                                          .toDouble(),
                                    ),
                                    left: GenericHelpers.getDynamicViewPos(
                                      context,
                                      val: state.taskDataDto!
                                          .customizationSettings[2].configs.left
                                          .toDouble(),
                                      isWidth: true,
                                    ),
                                    child: Text(
                                      state.taskDataDto!
                                          .customizationSettings[2].value,
                                      textAlign: GenericHelpers.getTextAlign(
                                          state
                                              .taskDataDto!
                                              .customizationSettings[2]
                                              .configs
                                              .allignment
                                              .value),
                                      style: TextStyle(
                                        color: GenericHelpers.getFontColor(state
                                            .taskDataDto!
                                            .customizationSettings[2]
                                            .configs
                                            .fontColor),
                                        fontWeight:
                                            GenericHelpers.getFontWeight(state
                                                .taskDataDto!
                                                .customizationSettings[2]
                                                .configs
                                                .fontWeight
                                                .value),
                                        fontFamily: state
                                            .taskDataDto!
                                            .customizationSettings[2]
                                            .configs
                                            .fontStyle
                                            .name,
                                        fontSize: state
                                            .taskDataDto!
                                            .customizationSettings[2]
                                            .configs
                                            .fontSize
                                            .toDouble(),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Click on  '),
                              const Icon(
                                Icons.edit,
                                size: 20,
                              ),
                              Text(state.isToggleCustomize
                                  ? '  to undo customization'
                                  : '  to customize Image'),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          if (state.isToggleCustomize)
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Click on  '),
                                Icon(
                                  Icons.download,
                                  size: 25,
                                ),
                                Text('  to download image'),
                              ],
                            ),
                          const Spacer(),
                        ],
                      ),
                    ),
          floatingActionButtonLocation: state.taskDataDto == null
              ? null
              : FloatingActionButtonLocation.endFloat,
          floatingActionButton: state.taskDataDto == null
              ? null
              : Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      backgroundColor:
                          state.isToggleCustomize ? Colors.purple : null,
                      onPressed: () {
                        homeCubit.toggleToCustomizeImg();
                      },
                      tooltip: 'Customize',
                      child: Icon(
                        Icons.edit,
                        color: state.isToggleCustomize
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (state.isToggleCustomize)
                      FloatingActionButton(
                        onPressed: () {
                          homeCubit.downloadCustomizeImg();
                        },
                        tooltip: 'Download',
                        child: const Icon(Icons.download),
                      ),
                  ],
                ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

import '../controllers/http_controller.dart';
import '../helpers/generic_helpers.dart';
import '../models/task_data_dto/task_data_dto.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  TaskDataDto? taskDataDto;
  bool isLoading = true;
  bool isDownloading = false;
  bool toggleCustomize = false;
  WidgetsToImageController controller = WidgetsToImageController();

// toggle customize view
  void toggleCustomizeImage() {
    setState(() {
      toggleCustomize = !toggleCustomize;
    });
  }

// download customize image
  Future downloadImage() async {
    setState(() {
      isDownloading = true;
    });

    final ss = await controller.capture();

    if (ss != null) {
      await ImageGallerySaver.saveImage(ss);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.green,
          content: Text(
            'Image downloaded & saved to gallery!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          duration: Duration(seconds: 2), // Duration to display the SnackBar
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            'Failed to download image, Please try again!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          duration: Duration(seconds: 2), // Duration to display the SnackBar
        ),
      );
    }
    setState(() {
      isDownloading = false;
      toggleCustomize = false;
    });
  }

  @override
  void initState() {
    HttpController.getJsonData().then((data) {
      taskDataDto = data;
      isLoading = false;
      setState(() {});
    }).catchError((error) {
      isLoading = false;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : taskDataDto == null
              ? const Center(child: Text('No Display!'))
              : ModalProgressHUD(
                  inAsyncCall: isDownloading,
                  child: Column(
                    children: <Widget>[
                      WidgetsToImage(
                        controller: controller,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Image.network(
                              taskDataDto!.media,
                              width: MediaQuery.of(context).size.width,
                            ),
                            if (toggleCustomize)
                              Positioned(
                                top: GenericHelpers.getDynamicViewPos(
                                  context,
                                  val: taskDataDto!
                                      .customizationSettings[0].configs.top
                                      .toDouble(),
                                ),
                                left: GenericHelpers.getDynamicViewPos(
                                  context,
                                  isWidth: true,
                                  val: taskDataDto!
                                      .customizationSettings[0].configs.left
                                      .toDouble(),
                                ),
                                child: Image.network(
                                  taskDataDto!.customizationSettings[0].value,
                                  height: taskDataDto!.customizationSettings[0]
                                      .configs.dimensions!.height
                                      .toDouble(),
                                  width: taskDataDto!.customizationSettings[0]
                                      .configs.dimensions!.width
                                      .toDouble(),
                                ),
                              ),
                            if (toggleCustomize)
                              Positioned(
                                top: GenericHelpers.getDynamicViewPos(
                                  context,
                                  val: taskDataDto!
                                      .customizationSettings[1].configs.top
                                      .toDouble(),
                                ),
                                left: GenericHelpers.getDynamicViewPos(
                                  context,
                                  val: taskDataDto!
                                      .customizationSettings[1].configs.left
                                      .toDouble(),
                                  isWidth: true,
                                ),
                                child: Text(
                                  taskDataDto!.customizationSettings[1].value,
                                  textAlign: GenericHelpers.getTextAlign(
                                      taskDataDto!.customizationSettings[1]
                                          .configs.allignment.value),
                                  style: TextStyle(
                                    color: GenericHelpers.getFontColor(
                                        taskDataDto!.customizationSettings[1]
                                            .configs.fontColor),
                                    fontWeight: GenericHelpers.getFontWeight(
                                        taskDataDto!.customizationSettings[1]
                                            .configs.fontWeight.value),
                                    fontSize: taskDataDto!
                                        .customizationSettings[1]
                                        .configs
                                        .fontSize
                                        .toDouble(),
                                  ),
                                ),
                              ),
                            if (toggleCustomize)
                              Positioned(
                                top: GenericHelpers.getDynamicViewPos(
                                  context,
                                  val: taskDataDto!
                                      .customizationSettings[2].configs.top
                                      .toDouble(),
                                ),
                                left: GenericHelpers.getDynamicViewPos(
                                  context,
                                  val: taskDataDto!
                                      .customizationSettings[2].configs.left
                                      .toDouble(),
                                  isWidth: true,
                                ),
                                child: Text(
                                  taskDataDto!.customizationSettings[2].value,
                                  textAlign: GenericHelpers.getTextAlign(
                                      taskDataDto!.customizationSettings[2]
                                          .configs.allignment.value),
                                  style: TextStyle(
                                    color: GenericHelpers.getFontColor(
                                        taskDataDto!.customizationSettings[2]
                                            .configs.fontColor),
                                    fontWeight: GenericHelpers.getFontWeight(
                                        taskDataDto!.customizationSettings[2]
                                            .configs.fontWeight.value),
                                    fontSize: taskDataDto!
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
                    const  SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Click on  '),
                          const Icon(
                            Icons.edit,
                            size: 20,
                          ),
                          Text(toggleCustomize
                              ? '  to undo customization'
                              : '  to customize Image'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      if (toggleCustomize)
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: toggleCustomize ? Colors.purple : null,
            onPressed: toggleCustomizeImage,
            tooltip: 'Customize',
            child: Icon(
              Icons.edit,
              color: toggleCustomize ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          if (toggleCustomize)
            FloatingActionButton(
              onPressed: downloadImage,
              tooltip: 'Download',
              child: const Icon(Icons.download),
            ),
        ],
      ),
    );
  }
}

import "package:camera/camera.dart";
import "package:flutter/material.dart";
import "package:grow_spirit/provider/camera_provider.dart";
import "package:provider/provider.dart";

class CameraTest extends StatefulWidget {
  const CameraTest({super.key});

  @override
  State<CameraTest> createState() {
    return _CameraTestState();
  }
}

class _CameraTestState extends State<CameraTest> {
  late CameraController _controller;
  Future<void> _initializeControllerFuture = Future(() {});
  CameraDescription? camera;

  @override
  void initState() {
    debugPrint("initState called");
    super.initState();

    Future.microtask(() {
      _initializeControllerFuture = getCameraDesc();
    });
  }

  Future<void> getCameraDesc() async{
      final cameraObj = Provider.of<CameraProvider>(context, listen: false);
      _controller = CameraController(
        cameraObj.cameraDescription,
        ResolutionPreset.medium,
      );
      print("this is not working");
      _initializeControllerFuture = _controller.initialize();
      await _initializeControllerFuture;
      return;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40,),
        FutureBuilder(future: _initializeControllerFuture, builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting) {
            return const Text("loading");
          }
          if(snapshot.hasError) {
            return const Text("failed to load camera");
          }
          if(snapshot.connectionState == ConnectionState.done) {
              return InkWell(
                onTap: () async {
                  var image = await _controller.takePicture();
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 1
                        ),
                        bottom: BorderSide(
                          width: 1
                        )
                      ),
                    ),
                    child: const Text("Open camera"),
                  ),
                ),
              );
          }
          return const Text("Someting went wrong");
        }),

      ],
    );
  }
}

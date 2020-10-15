import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CameraScreen extends StatefulWidget {
  final Widget child;

  CameraScreen({Key key, this.child}) : super(key: key);

  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  List<CameraDescription> camera;
  int selectedCameraIndex = -1;
  CameraController cameraController;

  @override
  void initState() {
    super.initState();
    availableCameras().then((_aviableCameras) {
      camera = _aviableCameras;

      if (camera.length > 0) {
        setState(() {
          selectedCameraIndex = 0;
        });
      }

      openCamera(camera[selectedCameraIndex]).then((void v) {});
    }).catchError((error) {
      print('Error: $error.code\nError Message: $error.message');
    });
  }

  @override
  void dispose() {
    cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
      ),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: <Widget>[
              _getCameraPreview(),
              _getCameraButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _getCameraButton() {
    return Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Container(
                  margin: EdgeInsets.all(20.0),
                  child: FloatingActionButton(
                      child: Icon(getCameraIcon(null)),
                      tooltip: 'Camera',
                      onPressed: () {
                        switchCamera();
                      })),
            );
  }

  Widget _getCameraPreview(){
    return Align(
      alignment: AlignmentDirectional.center,
      child: cameraController == null || cameraController?.value == null ||
              !cameraController.value.isInitialized ? 
              Text('Tap a camera.') : 
              AspectRatio(
                aspectRatio: cameraController.value.aspectRatio,
                child: CameraPreview(cameraController),
              ),
    );
  }

  Future openCamera(CameraDescription cameraDescription) async {
    if (cameraController != null) {
      await cameraController.dispose();
    }

    cameraController = CameraController(cameraDescription, ResolutionPreset.medium);
    cameraController.addListener(() {
      if (mounted) {
        setState(() {});
      }

      if (cameraController.value.hasError) {
        showError('Camera error ${cameraController.value.errorDescription}');
      }
    });

    try {
      await cameraController.initialize();
    } on CameraException catch (e) {
      showError(e.description);
    }

    if (mounted) {
      setState(() {});
    }
  }

  IconData getCameraIcon(CameraLensDirection direction) {
    switch (direction) {
      case CameraLensDirection.front:
        return Icons.camera_front;
      case CameraLensDirection.back:
        return Icons.camera_rear;
      case CameraLensDirection.external:
        return Icons.camera;
      default:
        return Icons.device_unknown;
    }
  }

  void switchCamera() {
    selectedCameraIndex =
        selectedCameraIndex < camera.length - 1 ? selectedCameraIndex + 1 : 0;
  }

  void showError(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }
}

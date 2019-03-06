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
    availableCameras().then((_aviableCameras){
        camera =_aviableCameras;

        if(camera.length > 0){
          setState(() {
            selectedCameraIndex = 0;
          });
        }

        openCamera(camera[selectedCameraIndex]).then((void v){});
    }).catchError((error){
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
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(getCameraIcon(null)),
              tooltip: 'Camera', 
              onPressed: () {
                switchCamera();
              },
            )
          ]
        ),
    );
  }

  Future openCamera(CameraDescription cameraDescription) async {
    if(cameraController != null){
      await cameraController.dispose();
    }

    cameraController = CameraController(cameraDescription, ResolutionPreset.medium);
    cameraController.addListener((){
      if(mounted){
        setState(() { });
      }
    
      if(cameraController.value.hasError){
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

  IconData getCameraIcon(CameraLensDirection direction){
    switch(direction){
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

  void switchCamera(){
    selectedCameraIndex = selectedCameraIndex < camera.length - 1 
                          ? selectedCameraIndex + 1 
                          : 0;
  }

  void showError(String msg){
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white
    );
  }
  
}

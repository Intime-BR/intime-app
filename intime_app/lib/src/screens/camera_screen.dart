import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:intime_app/src/services/initial_screen_services.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  List<CameraDescription> cameras = [];
  CameraController? controller;
  XFile? imagem;
  Size? size;

  @override
  void initState() {
    super.initState();
    _loadCameras();
  }

  _loadCameras() async {
    try {
      cameras = await availableCameras();
      _startCamera();
    } on CameraException catch (err) {
      print(err);
    }
  }

  _startCamera() {
    if (cameras.isEmpty) {
      print('Camera nao encontrada');
    } else {
      _previewCamera(cameras[1]);
    }
  }

  _previewCamera(CameraDescription camera) async {
    final CameraController cameraController = CameraController(
        camera, ResolutionPreset.high,
        enableAudio: false, imageFormatGroup: ImageFormatGroup.jpeg);
    controller = cameraController;

    try {
      await cameraController.initialize();
    } on CameraException catch (err) {
      print(err.description);
    }

    if (mounted) {
      setState(() {});
    }
  }

  _fileWidget() {
    return Container(
        width: size!.width,
        height: size!.height,
        child: imagem == null
            ? _cameraPreviewWidget()
            : Image.file(
                File(imagem!.path),
                fit: BoxFit.contain,
              ));
  }

  _cameraPreviewWidget() {
    final CameraController? cameraController = controller;
    if (cameraController == null || !cameraController.value.isInitialized) {
      return const Text('Camera deu B.O');
    } else {
      return Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [CameraPreview(controller!), _captureButton()],
      );
    }
  }

  _captureButton() {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        width: 80,
        height: 80,
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurStyle: BlurStyle.outer,
            spreadRadius: 3,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ], borderRadius: BorderRadius.all(Radius.circular(100))),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            onPressed: _takePicture,
            child: const Text('')),
      ),
    );
  }

  _takePicture() async {
    final CameraController? cameraController = controller;
    if (cameraController != null && cameraController.value.isInitialized) {
      try {
        XFile file = await cameraController.takePicture();
        if (mounted) setState(() => imagem = file);
      } on CameraException catch (err) {
        print(err.description);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tire uma selfie para \n validar sua presença'),
        backgroundColor: const Color(0xff2f2f2f).withOpacity(0.57),
        centerTitle: true,
        toolbarHeight: 105,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[900]),
        child: Center(
          child: _fileWidget(),
        ),
      ),
      floatingActionButton: (imagem != null)
          ? FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () async => {
                await InitialScreenService().checkStudentPresence()
                    ? Navigator.pop(context)
                    : ''
              },
              child: const Icon(
                Icons.check,
                color: Colors.green,
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

// sir project

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  final ImagePicker picker = ImagePicker();

  XFile? imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 300,
              color: Colors.yellow,
              child: imageFile == null
                  ? const SizedBox()
                  : Image.file(
                      File(imageFile!.path),
                      // fit: BoxFit.cover,
                    ),
            ),
            ElevatedButton(
              onPressed: () async {
                imageFile = await picker.pickImage(source: ImageSource.gallery);
                setState(() {});
                debugPrint(
                    "imageFile!.path ------------>>> ${imageFile!.path}");
              },
              child: const Text("ImagePicker"),
            ),
          ],
        ),
      ),
    );
  }
}

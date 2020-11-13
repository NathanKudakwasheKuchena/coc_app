import 'package:coc_app/services/uploader.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/widgets.dart';


class Lessons extends StatefulWidget {
  @override
  _LessonsState createState() => _LessonsState();
}

/// Widget to capture and crop the image

class _LessonsState extends State<Lessons> {
  /// Active image file
  File _imageFile;

  /// Cropper plugin
  Future<void> _cropImage() async {
    File cropped = await ImageCropper.cropImage(
        sourcePath: _imageFile.path,
        // ratioX: 1.0,
        // ratioY: 1.0,
        // maxWidth: 512,
        // maxHeight: 512,
        toolbarColor: Color(0xff00c2cb),
        toolbarWidgetColor: Colors.white,
        toolbarTitle: 'Crop Image'
    );

    setState(() {
      _imageFile = cropped ?? _imageFile;
    });
  }

  /// Select an image via gallery or camera
  Future<void> _pickImage(ImageSource source) async {
    File selected = await ImagePicker.pickImage(source: source);

    setState(() {
      _imageFile = selected;
    });
  }

  /// Remove image
  void _clear() {
    setState(() => _imageFile = null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Select an image from the camera or gallery
      bottomNavigationBar: BottomAppBar(
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.photo_camera),
                color: Color(0xff00c2cb),
                onPressed: () => _pickImage(ImageSource.camera),
              ),
              IconButton(
                icon: Icon(Icons.photo_library),
                color: Color(0xff00c2cb),
                onPressed: () => _pickImage(ImageSource.gallery),
              ),
            ],
          ),
        ),


      // Preview the image and crop it
      body: ListView(
        children: <Widget>[
          if (_imageFile != null) ...[

            Image.file(_imageFile),


            Row(
                children: <Widget>[
                  FlatButton(
                    child: Icon(Icons.crop),
                    color: Color(0xff00c2cb),
                    onPressed: _cropImage,
                  ),
                  FlatButton(
                    child: Icon(Icons.refresh),
                    color: Color(0xff00c2cb),
                    onPressed: _clear,
                  ),
                ],
              ),


            Uploader(file: _imageFile)
          ]
        ],
      ),
    );
  }
}


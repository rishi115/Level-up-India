import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilePicker extends StatefulWidget {
  const FilePicker({super.key});

  @override
  State<FilePicker> createState() => _FilePickerState();
}

class _FilePickerState extends State<FilePicker> {
  List<File> selectedFiles = [];

  Future<void> pickImagesAndVideos() async {
    final filePickerResult = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'mp4', 'mov', 'avi', 'wmv'],
      allowMultiple: true, // Allow multiple file selection
    );

    if (filePickerResult != null && filePickerResult.count > 0) {
      setState(() {
        // Clear previously selected files
        selectedFiles.clear();

        // Iterate through the picked files
        for (final file in filePickerResult.files) {
          final pickedFile = File(file.path!);
          // Add the picked file to the list
          selectedFiles.add(pickedFile);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image and Video Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: pickImagesAndVideos,
              child: Text('Pick Images and Videos'),
            ),
            SizedBox(height: 20),
            Container(
              height: 200, // Adjust the height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: selectedFiles.length,
                itemBuilder: (context, index) {
                  final file = selectedFiles[index];
                  if (file.path.endsWith('.jpg') ||
                      file.path.endsWith('.jpeg') ||
                      file.path.endsWith('.png')) {
                    // Display images
                    return Image.file(file, width: 150, height: 150);
                  } else {
                    // Handle other file types here
                    return Text('Unsupported File Type');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


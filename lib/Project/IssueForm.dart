import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class FormIdea extends StatefulWidget {
 String int;
  FormIdea({required this.int});

  @override
  State<FormIdea> createState() => _FormIdeaState();
}

class _FormIdeaState extends State<FormIdea> {
  String newComment = '';
  List<File> imageList = [];
  List<String> comments = [];
  TextEditingController commentController = TextEditingController();
  void selectImages() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        imageList.add(File(image.path));
        imageList;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.int),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:80.0,bottom: 80.0,left: 20.0,right: 20),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.brown.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Visibility(
                  visible: widget.int == "Report" ? true : false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      SizedBox(
                        height: 90.0,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          controller: commentController,
                          decoration: InputDecoration(
                            labelText: 'Reason for Reporting',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          backgroundColor: Colors.red, // Change button color as needed
                        ),
                        onPressed: () {
                          newComment = commentController.text;
                          if (newComment.isNotEmpty) {
                            setState(() {
                              comments.add('Reported: $newComment');
                              commentController.clear();
                            });
                            Navigator.of(context).pop(); // Close the dialog
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('Submit',style: TextStyle(
                            fontSize: 20,

                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: widget.int == "Issue" ? true : false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      SizedBox(
                        height: 90.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          controller: commentController,
                          decoration: InputDecoration(
                            labelText: 'Issue',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      GestureDetector(
                        onTap: (){
                          selectImages();

                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 100,
                            ),

                            Icon(Icons.add),
                            Text('Add Images ',style: TextStyle(
                              fontSize: 15,

                            ),),
                          ],
                        ),
                      ),
                      imageList.isNotEmpty
                          ? SizedBox(
                        width: MediaQuery.of(context).size.width / 1,
                        child: Wrap(
                          direction: Axis.horizontal,
                          children: imageList.map((item) {
                            return Stack(
                              children: [
                                Container(
                                  height: 80.0,
                                  width: 80.0,
                                  margin: const EdgeInsets.only(
                                    top: 10.0,
                                    right: 5.0,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFF233657)
                                          .withOpacity(0.5),
                                    ),
                                  ),
                                  child: Image.file(
                                    item,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        imageList.remove(item);
                                      });
                                    },
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: Color(0xFFFF5454),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      )
                          : SizedBox.shrink(),
                      SizedBox(height: 22.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          backgroundColor: Colors.red, // Change button color as needed
                        ),
                        onPressed: () {
                          newComment = commentController.text;
                          if (newComment.isNotEmpty) {
                            setState(() {
                              comments.add('Reported: $newComment');
                              commentController.clear();
                            });
                            Navigator.of(context).pop(); // Close the dialog
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('Submit',style: TextStyle(
                            fontSize: 20,

                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: widget.int == 'Idea for Project' ? true : false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      SizedBox(
                        height: 90.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          controller: commentController,
                          decoration: InputDecoration(
                            labelText: 'Idea for Project',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      GestureDetector(
                        onTap: (){
                          selectImages();

                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 100,
                            ),

                            Icon(Icons.add),
                            Text('Add Images ',style: TextStyle(
                              fontSize: 15,

                            ),),
                          ],
                        ),
                      ),
                      imageList.isNotEmpty
                          ? SizedBox(
                        width: MediaQuery.of(context).size.width / 1,
                        child: Wrap(
                          direction: Axis.horizontal,
                          children: imageList.map((item) {
                            return Stack(
                              children: [
                                Container(
                                  height: 80.0,
                                  width: 80.0,
                                  margin: const EdgeInsets.only(
                                    top: 10.0,
                                    right: 5.0,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFF233657)
                                          .withOpacity(0.5),
                                    ),
                                  ),
                                  child: Image.file(
                                    item,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        imageList.remove(item);
                                      });
                                    },
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: Color(0xFFFF5454),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      )
                          : SizedBox.shrink(),
                      SizedBox(height: 22.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          backgroundColor: Colors.red, // Change button color as needed
                        ),
                        onPressed: () {
                          newComment = commentController.text;
                          if (newComment.isNotEmpty) {
                            setState(() {
                              comments.add('Reported: $newComment');
                              commentController.clear();
                            });
                            Navigator.of(context).pop(); // Close the dialog
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('Submit',style: TextStyle(
                            fontSize: 20,

                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: widget.int == "Msg to Owner" ? true : false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      SizedBox(
                        height: 90.0,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          controller: commentController,
                          decoration: InputDecoration(
                            labelText: 'Msg to Owner',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          backgroundColor: Colors.red, // Change button color as needed
                        ),
                        onPressed: () {
                          newComment = commentController.text;
                          if (newComment.isNotEmpty) {
                            setState(() {
                              comments.add('Reported: $newComment');
                              commentController.clear();
                            });
                            Navigator.of(context).pop(); // Close the dialog
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('Submit',style: TextStyle(
                            fontSize: 20,

                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

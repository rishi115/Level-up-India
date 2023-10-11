import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:levelupindia/widgets/Button.dart';
import 'package:levelupindia/widgets/colors.dart';

import '../widgets/Snackbar.dart';

class AddProject extends StatefulWidget {
  @override
  _AddProjectState createState() => _AddProjectState();
}

class _AddProjectState extends State<AddProject> {
  List<Widget> studentFields = [];
  TextEditingController _projectTitleController = TextEditingController();
  TextEditingController _projectCategoryController = TextEditingController();
  TextEditingController _projectDescriptionController = TextEditingController();
  TextEditingController _projectSummaryController = TextEditingController();
  TextEditingController _projectMadeByController = TextEditingController();
  TextEditingController _studentLeadIdController = TextEditingController();
  TextEditingController _problemStatementController = TextEditingController();
  TextEditingController _problemFeatureController = TextEditingController();
  TextEditingController _numberOfStudentsController = TextEditingController();
  TextEditingController _techStackController = TextEditingController();
  TextEditingController _statusController = TextEditingController();
  TextEditingController _uploadDocumentController = TextEditingController();
  List<TextEditingController> studentNameControllers = [];
  List<TextEditingController> studentIdControllers = [];
  List<File> imageList = [];
  bool showpdf = false;
  File? pdfFile;
  void selectImages() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        imageList.add(File(image.path));
        imageList;
      });
    }
  }
  List<File> videoList = [];
  static Future<List<File>> pickFiles() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['mp4'],
      allowMultiple: true, // Allow multiple file selection
    );
    if (result == null || result.count == 0) return [];
    return result.paths.map((path) => File(path!)).toList();
  }
  static Future<File?> pickPdf() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      allowMultiple: true, // Allow multiple file selection
    );
    if (result == null || result.count == 0) return null;
    return File(result.paths.first!);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color:Colors.purple.shade50
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 100.0,bottom: 20,top: 27),
                  child: Text(
                    'Add Project',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2c100c)
                    ),
                  ),
                ),
              TextField(
                controller: _projectTitleController,
                decoration: InputDecoration(
                  labelText: 'Project Title',
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
          ),
                ),
              ),
              SizedBox(height: 16),
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
                    Text('Add Images of Project',style: TextStyle(
                      fontSize: 18,

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
              SizedBox(height: 16),
              TextField(
                controller: _projectCategoryController,
                decoration: InputDecoration(
                  labelText: 'Project Category',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
          ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  pickFiles().then((value) {
                    setState(() {
                      videoList = value;
                    });
                  });

                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),

                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                      ),

                      Icon(Icons.add),
                      Text('Add Videos of project',style: TextStyle(
                        fontSize: 18,

                      ),),
                    ],
                  ),
                ),
              ),
              videoList.isNotEmpty
                  ? SizedBox(
                width: MediaQuery.of(context).size.width / 1,
                child: Wrap(
                  direction: Axis.horizontal,
                  children: videoList.map((item) {
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
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            item.path,

                          )
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                videoList.remove(item);
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
              SizedBox(height: 16),
              TextField(
                controller: _projectDescriptionController,
                decoration: InputDecoration(
                  labelText: 'Project Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
          ),
                ),
                maxLines: null, // Allows for multiple lines of input
              ),
              SizedBox(height: 16),
              TextField(
                controller: _projectSummaryController,
                decoration: InputDecoration(
                  labelText: 'Project Summary',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
          ),
                ),
                maxLines: null, // Allows for multiple lines of input
              ),
              SizedBox(height: 16),
              TextField(
                controller: _projectMadeByController,
                decoration: InputDecoration(
                  labelText: 'Project Made By',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
          ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _studentLeadIdController,
                decoration: InputDecoration(
                  labelText: 'Student Lead ID',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
          ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _problemStatementController,
                decoration: InputDecoration(
                  labelText: 'Problem Statement',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
          ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _problemFeatureController,
                decoration: InputDecoration(
                  labelText: 'Problem Feature',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
          ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _numberOfStudentsController,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  labelText: 'Number of Students',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),

              ),
              SizedBox(height: 16),
              TextField(
                controller: _techStackController,
                decoration: InputDecoration(
                  labelText: 'Tech Stack',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
          ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  pickPdf().then((value) {
                    setState(() {
                      pdfFile = value;
                    });
                  });
                  setState(() {
                    showpdf = !showpdf;
                  });
                  },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: (showpdf)?Text('PDF Selected'):
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                      ),

                      Icon(Icons.add),
                      Text('Add Report',style: TextStyle(
                        fontSize: 18,

                      ),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _statusController,
                decoration: InputDecoration(
                  labelText: 'Status',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
          ),
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: (){
                  pickPdf().then((value) {
                    setState(() {
                      pdfFile = value;
                    });
                  });
                  setState(() {
                    showpdf = !showpdf;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: (showpdf)?Text('PDF Selected'):
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                      ),

                      Icon(Icons.add),
                      Text('Add Plagirism Certificate',style: TextStyle(
                        fontSize: 18,

                      ),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color:  Colors.grey.shade100,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Provide a brief 30-second video pitch for your project. In this video, you can introduce your project, highlight its key features, and convey why it's unique or valuable. Use this opportunity to engage and capture the attention of Industry. Be concise and persuasive in your presentation",style: TextStyle(
                          color: Colors.black,
                        ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          pickFiles().then((value) {
                            setState(() {
                              videoList = value;
                            });
                          });

                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 10),

                          child: Row(
                            children: [
                              SizedBox(
                                width: 100,
                              ),

                              Icon(Icons.add,color: Colors.pink,),
                              Text('Add Videos',style: TextStyle(
                                fontSize: 13,color: Colors.pink
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              MyButton(onTap: (){
                {
                  // Retrieve the values from the text controllers
                  String projectTitle = _projectTitleController.text;
                  String projectCategory = _projectCategoryController.text;
                  String projectDescription = _projectDescriptionController.text;
                  String projectSummary = _projectSummaryController.text;
                  String projectMadeBy = _projectMadeByController.text;
                  String studentLeadId = _studentLeadIdController.text;
                  String problemStatement = _problemStatementController.text;
                  String problemFeature = _problemFeatureController.text;
                  String numberOfStudents = _numberOfStudentsController.text;
                  String techStack = _techStackController.text;
                  String status = _statusController.text;
                  String uploadDocument = _uploadDocumentController.text;
                  List<String> studentNames = [];
                  List<String> studentIds = [];
                  for (int i = 0; i < studentNameControllers.length; i++) {
                    studentNames.add(studentNameControllers[i].text);
                    studentIds.add(studentIdControllers[i].text);
                  }
                  print('Student Names: $studentNames');
                  print('Student IDs: $studentIds');

                  // You can now process these values as needed.
                  // For example, you can create an object to represent the project and save it.
                  // Print the values for demonstration purposes.
                  print('Project Title: $projectTitle');
                  print('Project Category: $projectCategory');
                  print('Project Description: $projectDescription');
                  print('Project Summary: $projectSummary');
                  print('Project Made By: $projectMadeBy');
                  print('Student Lead ID: $studentLeadId');
                  print('Problem Statement: $problemStatement');
                  print('Problem Feature: $problemFeature');
                  print('Number of Students: $numberOfStudents');
                  print('Tech Stack: $techStack');
                  print('Status: $status');
                  print('Upload Document: $uploadDocument');
                  ScaffoldMessenger.of(context).showSnackBar(createSnackBar("Added"));
                  Navigator.pop(context);
                }
              }, text: "Submit")
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of all text controllers
    _projectTitleController.dispose();
    _projectCategoryController.dispose();
    _projectDescriptionController.dispose();
    _projectSummaryController.dispose();
    _projectMadeByController.dispose();
    _studentLeadIdController.dispose();
    _problemStatementController.dispose();
    _problemFeatureController.dispose();
    _numberOfStudentsController.dispose();
    _techStackController.dispose();
    _statusController.dispose();
    _uploadDocumentController.dispose();
    super.dispose();
  }
}

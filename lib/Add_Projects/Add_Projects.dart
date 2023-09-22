import 'dart:html';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  FilePickerResult? filePickerResult;
  File? pickedFile;
  getImageorVideoFromGallery(context) async {
    filePickerResult = await FilePicker.platform.pickFiles();

    if (filePickerResult != null) {
      pickedFile = File(filePickerResult!.files.single.path.toString());
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
          filePickerResult!.files.single.extension == 'mp4'
              ? VideoBlock(file: pickedFile!)
              : ImageBlock(
            file: pickedFile!,
          )));
    } else {
      // can perform some actions like notification etc
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.grey.shade200,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [

                Padding(
                  padding: const EdgeInsets.only(left: 70.0,bottom: 20),
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
              TextField(
                controller: _projectCategoryController,
                decoration: InputDecoration(
                  labelText: 'Project Category',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
          ),
                ),
              ),
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
              SizedBox(height: 16),
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

              TextFormField(
                controller: _uploadDocumentController,
                decoration: InputDecoration(
                  labelText: 'Upload Document',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                readOnly: true,
                onTap: () async {
                  FilePickerResult? result = await FilePicker.platform.pickFiles(
                    type: FileType.custom,
                    allowedExtensions: ['jpg', 'pdf', 'doc'], // Specify allowed extensions as a list
                  );

                  if (result != null) {
                    File file = File(result.files.single.path!);
                    _uploadDocumentController.text = file.path;
                  }
                },
              ),

              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
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
                },
                child: Text('Submit'),
              ),
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

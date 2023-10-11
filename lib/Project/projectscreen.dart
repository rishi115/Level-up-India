import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:levelupindia/Project/comments.dart';

import '../flowchart/flowchart.dart';
import '../pdfViewer/api/pdf_api.dart';
import '../pdfViewer/page/pdf_viewer_page.dart';
import '../pdfViewer/pdf.dart';
import '../widgets/Button.dart';
import '../widgets/Content_screen.dart';
import '../widgets/Snackbar.dart';
import '../widgets/Text_field.dart';
import 'IssueForm.dart';

class Project_Details extends StatefulWidget {
  final Key? key;

  const Project_Details({this.key}) : super(key: key);

  @override
  State<Project_Details> createState() => _Project_DetailsState();
}

class _Project_DetailsState extends State<Project_Details> {
  bool isliked = false;
  int selectedTabIndex = 0;
  List<String> comments = [];
  Widget buildTab(String text, int index) {
    return GestureDetector(
      onTap: () {
        // Update the selected tab index when a tab is clicked
        setState(() {
          selectedTabIndex = index;
        });
      },
      child: Container(
        child: Text(
          text,
          style: TextStyle(
            color: selectedTabIndex == index ? Colors.blue : Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
  );
  List<File> imageList = [];
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

  void _showReportDialog(BuildContext context,String text) {

    showDialog(
      context: context,
      builder: (BuildContext context) {

        return AlertDialog(
          key: UniqueKey(),
          backgroundColor: Colors.brown.shade800,
          shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(20.0),
          ),

          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FormIdea(int: 'Report',)),
                      );
                    },
                    child: ListTile(
                      title: Text('Report',style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FormIdea(int: 'Issue',)),
                      );
                    },
                    child: ListTile(
                      title: Text('Issue',style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FormIdea(int: 'Idea for Project')),
                      );
                    },
                    child: ListTile(
                      title: Text('Idea for Project',style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FormIdea(int: 'Msg to Owner')),
                      );
                    },
                    child: ListTile(
                      title: Text('Msg to Owner',style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),),
                    ),
                  ),
                ],
              ), ],
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Details'),
        backgroundColor:  Color(0xff2c100c),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Colors.purple.shade50, onPressed: () {
            _showReportDialog(context,"Project");
          },
          ),
        ],
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 6.0,top: 9.0),
              child: Container(
                height: 199,
                width: double.infinity,
                child:ContentScreen(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14.0,left: 15),
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color:  Color(0xff2c100c),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 15,),
                    Text(
                      "Rating : 22k",style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                    SizedBox(width: 150,),
                    Text(
                      "Comments : 220",style: TextStyle(
                      color: Colors.white,
                    ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14.0,left: 15,bottom: 2,top: 10),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color:  Color(0xff2c100c),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isliked = !isliked;
                        });
                        },
                      icon: (isliked)?Icon(Icons.favorite_border,color: Colors.white,)
                          :Icon(Icons.favorite,color: Colors.white,),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment,color: Colors.white,),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    IconButton(
                      onPressed: () {ScaffoldMessenger.of(context).showSnackBar(createSnackBar("Saved"));},
                      icon: const Icon(Icons.save,color: Colors.white,),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share,color: Colors.white,),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Padding(
                padding: const EdgeInsets.only(right: 14.0,left: 15),
                child: Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color:  Color(0xff2c100c),
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Text(
                          "Project Title : Level Up India",style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Text(
                          "College Name : Smt.India Gandhi college"
                          ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Text(
                          "Status: Completed/ Ongoing"
                          ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                        ),
                      ), SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Text(
                          "Category: Software/ Hardware/ IoT/ "
                          ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Text(
                          "Theme: Smart Education"
                          ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14.0,left: 15),
              child: Container(
                  height: 69,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color:  Color(0xff2c100c),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: Text(
                            "Problem Statement:"
                            ,style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13.0),
                          child: Text(
                            "Online integrated platform for projects taken up by the students of various universities/colleges"
                            ,style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                          ),
                        ),
                      ]
                  )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14.0,left: 15),
              child: GestureDetector(
                onTap: ()async{
                  final path = 'assest/DWM ASSIGN 3.pdf';
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file);

                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color:  Color(0xff86bbe0),
                  ),
                  child:Center(
                    child: Text(
                      "Download Report Pdf",style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
    ),
            ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14.0,left: 15),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color:  Colors.green.shade300,
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:10,left:8.0),
                      child: SelectableText(
                        "Github Link : ",
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SelectableText(
                        "https://github.com/rishi115/flutter-googlemap.git",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10,left:8.0),
                      child: SelectableText(
                        "Website Link : ",
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SelectableText(
                        "https://alaram-c84e9.firebaseapp.com/",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.only(right: 14.0,left: 15),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color:  Color(0xff2c100c),
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Text(
                          "Student Team",style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Text(
                          "Rishikesh Devare"
                          ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Text(
                          "Omkar Sonawane"
                          ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Text(
                          "Harshita Sonkar "
                          ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Text(
                          "Prathamesh Zingade"
                          ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                        ),
                      ),

                    ],
                  ),
                )
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              height: 400,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
                color: Color(0xff2c100c),
              ),
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 25,
                        ),

                        buildTab("Description", 0),
                        SizedBox(
                          width: 28,
                        ),// Create a tab for "Description"
                        buildTab("Flow Chart", 1),
                        SizedBox(
                          width: 28,
                        ),// Create a tab for "Tech Stack"
                        buildTab("Comments", 2), // Create a tab for "Flowchart"
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                  Visibility(
                    visible: selectedTabIndex == 0, // Show content when "Description" tab is selected
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('          In todays rapidly evolving world, technology plays a pivotal role in shaping various aspects of our lives. In the realm of education, technology integration has the potential to revolutionize learning experiences, making them more engaging, accessible, and effective. The project aims to develop an innovative educational technology platform that empowers educators and learners alike'
                          'olved in the learning process. It will provide a collaborative environment for students to work on projects and share their ideas with the world. The platform will also provide a marketplace for educators to share their knowledge and expertise with the students. The platform will be developed using the latest web technologies and will be hosted on the cloud.'
                                ,style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                      ),
                    )
                  ),
                  Visibility(
                    visible: selectedTabIndex == 1, // Show content when "Description" tab is selected
                    child: Container(
                        height: 333,
                        child: Flowchart()),
                  ),
                  Visibility(
                    visible: selectedTabIndex == 2, // Show content when "Description" tab is selected
                    child: Container(
                      color: Color(0xff2c100c),
                        height: 333,
                        child: Comments()),
                  ),

                ],
              ),
            )
          ],
        ),
      )
    );
  }
}



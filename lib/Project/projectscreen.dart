import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/Content_screen.dart';

class Project_Details extends StatefulWidget {
  const Project_Details({super.key});

  @override
  State<Project_Details> createState() => _Project_DetailsState();
}

class _Project_DetailsState extends State<Project_Details> {
  int selectedTabIndex = 0;
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Details'),
        backgroundColor:  Color(0xff2c100c),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
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
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      color: Color(0xff2c100c),
                      child: Center(
                        child: Text("Description Content", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: selectedTabIndex == 1, // Show content when "Description" tab is selected
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      color: Color(0xff2c100c),
                      child: Center(
                        child: Text("Flow Chart", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: selectedTabIndex == 2, // Show content when "Description" tab is selected
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      color: Color(0xff2c100c),
                      child: Center(
                        child: Text("Comments", style: TextStyle(color: Colors.white)),
                      ),
                    ),
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



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
          PopupMenuButton<String>(
            itemBuilder: (BuildContext bc) => [
              PopupMenuItem(child: Text("Report"), value: "Edit",
              ),
              PopupMenuItem(child: Text("Issue"), value: "Delete"),
              PopupMenuItem(child: Text("Feature Idea"), value: "Delete"),
              PopupMenuItem(child: Text("Message to Owner"), value: "Delete"),
            ],
            onSelected: (value) {
              print(value);
            },
            icon: Icon(Icons.more_vert),
            color: Colors.purple.shade50,
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundImage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.NqY3rNMnx2NXYo3KJfg43gHaHa&pid=Api&rs=1&c=1&qlt=95&w=123&h=123'),
                                      ),
                                    ),
                                    Container(
                                      height: 150,
                                      width: 280,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.0),
                                        color:  Colors.brown.shade100,
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left:8.0,top: 8.0),
                                                child: Text(
                                                  "Rishikesh Devare",style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                ),
                                                ),
                                              ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:8.0),
                                            child: Text(
                                              "SIGCE",style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                            ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(13.0),
                                            child: Container(
                                             height:75,
                                              width: 250,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20.0),
                                                color:  Colors.white,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left:8.0,top: 8.0),
                                                child: Text(
                                                  "I am a Flutter Developer",style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17,
                                                ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],),),
                              SizedBox(
                                height:1,
                              ),

                              Row(
                                children: [
                                  SizedBox(
                                    width: 80,
                                  ),
                                  Text('Like',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),)  ,
                                  SizedBox(width: 20,),
                                  Text('Comment',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),)  ,
                                ],
                              )

                            ],
                          ),
                        ),
                      ],
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



import 'package:flutter/material.dart';
import 'package:levelupindia/Leaderboard/student.dart';
import 'package:levelupindia/Registration/RegistrationStudent.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({super.key});

  @override
  State<LeaderBoard> createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  int selectedTabIndex = 1;
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
            color: selectedTabIndex == index ?  Colors.brown : Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar:AppBar(
        backgroundColor: Colors.brown.shade100,
        title: Text(
          'LeaderBoard',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0), // Adjust the height as needed
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            height: 60.0,
            color: Colors.brown, // Background color of the custom AppBar section
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),

                Text(
                  'Rishikesh Devare',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),Text(
                  '1000',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

        body:  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
            color: Colors.brown.shade100,
          ),
          child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    buildTab("College", 0),
                    // Create a tab for "Description"
                    buildTab("Student", 1),

                    buildTab("Industry", 2), // Create a tab for "Flowchart"
                  ],
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 2,
              ),
              Visibility(
                visible: selectedTabIndex == 0, // Show content when "Description" tab is selected
                child: Student(),
              ),
              Visibility(
                visible: selectedTabIndex == 1, // Show content when "Description" tab is selected
                child: Student(),
              ),
              Visibility(
                visible: selectedTabIndex == 2, // Show content when "Description" tab is selected
                child: Student(),
              ),

            ],
          ),
      ),
        ),
    );
  }
}

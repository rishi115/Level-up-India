import 'package:flutter/material.dart';
import 'package:levelupindia/Project/projectscreen.dart';

import '../widgets/Content_screen.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Your Project'),
      ),
      body:Container(
        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Project_Details ()),
              );
            },
            child: Container(
              height: 400,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey.withOpacity(0.4),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // Adjust padding as neededchild:
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),

                        CircleAvatar(
                          radius: 20, // Adjust the radius as needed
                          backgroundImage: NetworkImage('https://tse2.mm.bing.net/th?id=OIP.YWbAiIEMaJ8V1zyHUPfENQHaHa&pid=Api&P=0&h=220'), // Replace with your image
                        ),
                        SizedBox(width: 13.0), // Add spacing between the image and text
                        Column(
                          children: [
                            Text(
                              'Rishikesh Devare', // Replace with the user's name
                              style: TextStyle(
                                fontSize: 20, // Adjust the font size as needed
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Smt. Indira Gandhi College', // Replace with the user's name
                              style: TextStyle(
                                fontSize: 12, // Adjust the font size as needed
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 197,
                    width: double.infinity,
                    child:ContentScreen(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      'Butterfly Garden Planner: A Mobile App'
                      ,style: TextStyle(
                        fontSize: 17
                    ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      padding: EdgeInsets.only(left:15),
                      child: Text(
                        "Discription :  Create a mobile app to promote butterfly conservation through education, identification, and community engagement"
                        ,style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                      ),
                      )
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}

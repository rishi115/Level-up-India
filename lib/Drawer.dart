import 'package:flutter/material.dart';
import 'package:levelupindia/Community/Community.dart';
import 'package:levelupindia/ProblemStatement/Problems.dart';

import 'Chatgpt/ChatPage.dart';
import 'Events/Events.dart';
import 'Leaderboard/leaderBoard.dart';
import 'login_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 180,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.NqY3rNMnx2NXYo3KJfg43gHaHa&pid=Api&rs=1&c=1&qlt=95&w=123&h=123'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),

                      Text(
                        'ID : 2021ca12f',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,

                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Mail : rishidevare051@gmail.com',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,                      ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Year : 2nd Year',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,                      ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Branch : AIML',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,                      ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Location : Delhi',
                        style: TextStyle(
                          fontSize: 12,  fontWeight: FontWeight.w500,
                        ),
                      ),

                    ],
                  )
                ],),),
            SizedBox(
              height: 20,
            ),
            //give me a lightyellow colour Contianer with my points text
            Container(
              //make a border circular
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(50),
              ),
              height: 50,
              width: 200,

              child: Center(
                child: Text(
                  'My Points : 40',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //give me a brown container with text
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LeaderBoard()),
                );

              },
              child: Container(
                height: 70,

                decoration: BoxDecoration(
                  color: Colors.brown[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'Leaderboard',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Events()),
                );

              },
              child: Container(
                height: 70,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.brown[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'Events',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );

              },
              child: Container(
                height: 70,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.brown[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'Assistance',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(onTap: () {})));

              },
              child: Container(
                height: 70,

                decoration: BoxDecoration(
                  color: Colors.brown[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'Log out ',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }

}
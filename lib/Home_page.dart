import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levelupindia/widgets/Snackbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Add_Projects/Add_Projects.dart';
import 'Events/Events.dart';
import 'ProblemStatement/GenerateProblemStatement.dart';
import 'Leaderboard/leaderBoard.dart';
import 'ProblemStatement/MyProblemStatement.dart';
import 'Project/MyProblemStatement.dart';
import 'Project/YourProject.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  bool show = false;
  int productIndex = 0;
  bool showContainer = false;
  bool showCollege = false;
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    final String? storedEmail = prefs.getString('user_email');
    if (storedEmail =='456'){
      setState(() {
        showContainer = true;
      });
    }else if (storedEmail =='789'){
      setState(() {
        showCollege = true;
        showContainer = true;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Visibility(
              visible: showCollege,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network('https://tse2.mm.bing.net/th?id=OIP.wNkZbli3P5D4J-M634H2MAHaEE&pid=Api&P=0&h=220'),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 97,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                        children:[
                      Padding(
                        padding: const EdgeInsets.only(top:4.0),
                        child: Text(
                          "Smt Indira Gandhi College ",
                          style: TextStyle(
                            fontSize: 20
                          ),
                        ),
                      ),
                      Text(
                        "of Engineering",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                      Text(
                        "879shhs98980hs",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                      Text(
                        "2021caf@sigce.edu.in",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      )]),
                  ),
                )
                ],
              )
            ),
            Visibility(
              visible: !showCollege,
              child: Column(
                  children:[
                    CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Container(
                      height: 120.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.GLsHbSAVrkXKCzBl2az9eAHaD4&pid=Api&P=0&h=220'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  autoPlayCurve: Curves.easeInOut,
                  height: 150,
                  viewportFraction: 0.9,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 1000),
                  padEnds: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      productIndex = index;
                    });
                  },
                ),
              ),
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
              ),]),
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: showCollege,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddProject()),
                      );

                    },
                    child: Container(
                      height: 150,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Icon(
                            Icons.add,
                            size: 50,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Add ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Project',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyProject()),
                      );

                    },
                    child: Container(
                      height: 150,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Icon(
                            Icons.bookmark_add_outlined,
                            size: 50,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'My',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Project',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
              Visibility(
              visible: showContainer,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GenerateProblem()),
                  );

                },
                child: Container(
                  height: 150,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 13,
                      ),
                      Icon(
                        Icons.pending_actions_outlined,
                        size: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Generate ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Problem',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Statement ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Visibility(
              visible: showContainer,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyProblemStatement()),
                  );
                        },
                child: Container(
                  height: 150,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 13,
                      ),
                      Stack(
                        children: [Icon(
                          Icons.report_problem_outlined,
                          size: 50,
                        ),
                          Positioned(
                            top: 0, // Adjust the top position as needed
                            right: 0, // Adjust the right position as needed
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                '3', // Replace with your count
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ]
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'My ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'problem ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Statement ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),]),
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
                width: 360,
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
                width: 360,
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
            Container(
              height: 70,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Community',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),

          ],
        ),
      )
    );
  }
}

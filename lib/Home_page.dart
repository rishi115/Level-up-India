import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levelupindia/widgets/Snackbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Events/Events.dart';
import 'ProblemStatement/GenerateProblemStatement.dart';
import 'Leaderboard/leaderBoard.dart';
import 'ProblemStatement/MyProblemStatement.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  bool show = false;
  int productIndex = 0;
  bool showContainer = false;
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    final String? storedEmail = prefs.getString('user_email');
    if (storedEmail =='456') {
      setState(() {
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
            ),
            SizedBox(
              height: 20,
            ),

            Row
              (
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
                  show = !show;
                  if(show){
                            ScaffoldMessenger.of(context)
                                .showSnackBar(createSnackBar("opening"));
                          }else{
                            ScaffoldMessenger.of(context)
                                .showSnackBar(createSnackBar("closing"));
                          }
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
            Visibility(
              visible: show,
              child: InkWell(
                onTap: () {
                  },
                child: Padding(
                  padding: const EdgeInsets.only(top:13.0,left: 20,right: 20),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue[100],

                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 13,
                          ),
                          Stack(
                              children:[
                                Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.grey.withOpacity(0.4),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const CircleAvatar(
                                    radius: 16,
                                    backgroundImage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.vLkZ-tcf6X3vo0HG9L-FjAHaHa&pid=Api&rs=1&c=1&qlt=95&w=122&h=122'),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('Problem Statement1'),
                                      Text('1 day ago',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
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
                                ),]),
                          Stack(
                              children:[
                                Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.grey.withOpacity(0.4),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const CircleAvatar(
                                    radius: 16,
                                    backgroundImage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.vLkZ-tcf6X3vo0HG9L-FjAHaHa&pid=Api&rs=1&c=1&qlt=95&w=122&h=122'),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('Problem Statement1'),
                                      Text('1 day ago',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
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
                                ),]),
                          Stack(
                              children:[
                                Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.grey.withOpacity(0.4),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const CircleAvatar(
                                    radius: 16,
                                    backgroundImage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.vLkZ-tcf6X3vo0HG9L-FjAHaHa&pid=Api&rs=1&c=1&qlt=95&w=122&h=122'),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('Problem Statement1'),
                                      Text('1 day ago',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
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
                                ),]),
                        ],
                      ),
                    ),
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
            Container(
              height: 70,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Challenge',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

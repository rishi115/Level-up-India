import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'Community/Community.dart';
import 'Drawer.dart';
import 'Home_page.dart';
import 'Notification.dart';
import 'ProblemStatement/Problems.dart';
import 'Profile.dart';
import 'feed/feed.dart';


class nav_bar extends StatefulWidget {
  final int usertype;
  nav_bar({required this.usertype});

  @override
  State<nav_bar> createState() => _nav_barState();
}

class _nav_barState extends State<nav_bar> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  int selectedIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  final List<Widget> screens = [
    Home_page(),
    Feed(),
    Community(),
    Problems(),
    Profile(),
  ];
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: NavigationDrawerWidget(),
      key: _scaffoldKey,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Rishikesh Devare",
              style: TextStyle(color: Colors.black, fontSize: 17.0),
            ),
            const SizedBox(height: 3),
            Row(
              children: const [
                Icon(Icons.location_on_outlined, size: 13,color: Colors.black,),
                SizedBox(width: 2),
                Text(
                  "Smt Indira Gandhi College of Engineering",
                  style: TextStyle(color: Colors.black, fontSize: 11.0),
                ),
              ],
            )
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu_sharp, size: 30,color: Colors.black,),
          onPressed: () {
            _openDrawer();
          },
        ),
        actions:  [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notification_important_outlined, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notificationion()),
                  );
                },
              ),
              Positioned(
                right: 5,
                top: 5,
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red, // Change the color as needed
                  ),
                  child: Text(
                    '5', // Replace with your actual count
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12, // Adjust font size as needed
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 15),
        ],
      ),

      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: screens[selectedIndex],
      ),
      bottomNavigationBar: Container(

        height: 65,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 20, color: Colors.black26)],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: GNav(
            gap: 8,
            activeColor: Colors.white,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            duration: const Duration(milliseconds: 800),
            tabBackgroundColor: Colors.grey,
            tabs: const [
              GButton(icon: Icons.home, text: 'Home', textStyle: TextStyle(fontSize: 12)),
              GButton(icon: Icons.remove_red_eye_outlined, text: 'Feed', textStyle: TextStyle(fontSize: 12)),
              GButton(icon: Icons.groups, text: 'Community', textStyle: TextStyle(fontSize: 12)),
              GButton(icon: Icons.report_problem_outlined, text: 'Problems', textStyle: TextStyle(fontSize: 12)),
              GButton(icon: Icons.person_outline, text: 'Profile', textStyle: TextStyle(fontSize: 12)),

            ],
            selectedIndex: selectedIndex,
            onTabChange: (index) {
              setState(() {
                selectedIndex = index;
              });
              _animationController.reverse().then((_) {
                _animationController.forward();
              });
            },
          ),
        ),
      ),

    );
  }
}
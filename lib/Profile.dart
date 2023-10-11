import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levelupindia/widgets/Content_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isIconSelected = true;
  int selectedTabIndex = 0;
  bool showContainer = false;
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    final String? storedEmail = prefs.getString('user_email');
    if (storedEmail =='456'||storedEmail =='789') {
      setState(() {
        showContainer = true;
      });
    }
  }
  Widget buildTab(String text, int index,IconData text1) {
    return GestureDetector(
      onTap: () {
        // Update the selected tab index when a tab is clicked
        setState(() {
          selectedTabIndex = index;
        });
      },
      child: Column(
        children: [
          Icon(
            text1,
            color: selectedTabIndex == index ? Colors.blue : Colors.black,
            size: 35,
          ),
          Container(
            child: Text(
              text,
              style: TextStyle(
                color: selectedTabIndex == index ? Colors.blue : Colors.black,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              height: 180,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.NqY3rNMnx2NXYo3KJfg43gHaHa&pid=Api&rs=1&c=1&qlt=95&w=123&h=123'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'ID : 2021ca11f',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Mail : rishidevare051@gmail.com',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,                      ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Year : 2nd Year',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,                      ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Branch : AIML',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,                      ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Location : Delhi',
                        style: TextStyle(
                          fontSize: 14,  fontWeight: FontWeight.w500,
                        ),
                      ),

                    ],
                  )
                ],),),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Student : Rishikesh Devare",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                  "College  : Smt Indira Gandhi College of Engineering",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
                color: Colors.white,
              ),
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0,bottom: 6),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildTab("Activity", 0,Icons.local_activity_outlined),
                          buildTab("Posts", 1,Icons.post_add_outlined),
                          (!showContainer)?buildTab("Prizes", 2,Icons.card_giftcard):buildTab("My Problems", 9,Icons.report_problem_outlined),
                          buildTab("Issues", 3,Icons.error_outline_outlined),
                          buildTab("Saved", 4,Icons.saved_search_outlined),// Create a tab for "Flowchart"
                        ]
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  Visibility(
                    visible: selectedTabIndex == 0, // Show content when "Description" tab is selected
                    child: Container(
                        width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
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
                                      Text('You Received 10 points from'),
                                      Text('Prathmesh Zinghade',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  Column(
                                    children: const [
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '1h ago',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12
                                        ),
                                      ),
                                      Icon(Icons.menu_outlined),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
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
                                      Text('You Received 10 points from'),
                                      Text('Prathmesh Zinghade',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  Column(
                                    children: const [
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '1h ago',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12
                                        ),
                                      ),
                                      Icon(Icons.menu_outlined),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
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
                                      Text('You Received 10 points from'),
                                      Text('Prathmesh Zinghade',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  Column(
                                    children: const [
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '1h ago',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12
                                        ),
                                      ),
                                      Icon(Icons.menu_outlined),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                  Visibility(
                    visible: selectedTabIndex == 1, // Show content when "Description" tab is selected
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            height: 350,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.grey.withOpacity(0.3),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  // Adjust padding as neededchild:
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const CircleAvatar(
                                        radius: 20, // Adjust the radius as needed
                                        backgroundImage: NetworkImage('https://tse2.mm.bing.net/th?id=OIP.YWbAiIEMaJ8V1zyHUPfENQHaHa&pid=Api&P=0&h=220'), // Replace with your image
                                      ),
                                      const SizedBox(width: 13.0), // Add spacing between the image and text
                                      Column(
                                        children: const [
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
                                      const SizedBox(
                                        width: 50,
                                      ),

                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 197,
                                  width: double.infinity,
                                  child:const ContentScreen(),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: const Text(
                                    'ShopifyX: Revolutionizing Online Shopping'
                                    ,style: TextStyle(
                                      fontSize: 17
                                  ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    padding: const EdgeInsets.only(left:15),
                                    child: const Text(
                                      "Discription : ShopifyX leverages advanced AI and machine learning algorithms to understand ea"
                                      ,style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w300,
                                    ),
                                    )
                                ),
                                const SizedBox(
                                  height: 10,
                                ),

                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          Container(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            height: 350,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.grey.withOpacity(0.3),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  // Adjust padding as neededchild:
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const CircleAvatar(
                                        radius: 20, // Adjust the radius as needed
                                        backgroundImage: NetworkImage('https://tse2.mm.bing.net/th?id=OIP.YWbAiIEMaJ8V1zyHUPfENQHaHa&pid=Api&P=0&h=220'), // Replace with your image
                                      ),
                                      const SizedBox(width: 13.0), // Add spacing between the image and text
                                      Column(
                                        children: const [
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
                                      const SizedBox(
                                        width: 50,
                                      ),

                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 197,
                                  width: double.infinity,
                                  child:const ContentScreen(),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: const Text(
                                    'ShopifyX: Revolutionizing Online Shopping'
                                    ,style: TextStyle(
                                      fontSize: 17
                                  ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    padding: const EdgeInsets.only(left:15),
                                    child: const Text(
                                      "Discription : ShopifyX leverages advanced AI and machine learning algorithms to understand ea"
                                      ,style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w300,
                                    ),
                                    )
                                ),
                                const SizedBox(
                                  height: 10,
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: selectedTabIndex == 2, // Show content when "Description" tab is selected
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      color: Colors.white,
                      child: const Center(
                        child: Text("Comments"),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: selectedTabIndex == 3, // Show content when "Description" tab is selected
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.grey.withOpacity(0.4),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const CircleAvatar(
                                        radius: 23,
                                        backgroundImage: NetworkImage('https://tse3.mm.bing.net/th?id=OIP.i4QwrvSaAzvB-ePAjt6hDwHaHa&pid=Api&P=0&h=220'),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        constraints: const BoxConstraints(
                                          maxWidth: 150,
                                        ),
                                        child: Column(

                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            SizedBox(
                                              height: 5,
                                            ),

                                            Text('Project ID : ',style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),),
                                            Text('38y78798792789',style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 100,
                                      ),
                                      Column(
                                        children: const [

                                          Text(
                                            '1h ago',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12
                                            ),
                                          ),
                                          Icon(Icons.menu_outlined),
                                        ],
                                      ),

                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      '#1 opened 1 day ago'
                                      ,style: TextStyle(
                                        fontSize: 14
                                    ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Feature : '
                                      ,style: TextStyle(
                                        fontSize: 14
                                    ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Implementing AI in Online Shopping'
                                      ,style: TextStyle(
                                        fontSize: 14
                                    ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Project Title : '
                                      ,style: TextStyle(
                                        fontSize: 14
                                    ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'ShopifyX: Revolutionizing Online Shopping'
                                      ,style: TextStyle(
                                        fontSize: 14
                                    ),
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.grey.withOpacity(0.4),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const CircleAvatar(
                                        radius: 23,
                                        backgroundImage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.yt95fsGBrg_wtF0nQaf4HgHaHZ&pid=Api&P=0&h=220'),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        constraints: const BoxConstraints(
                                          maxWidth: 150,
                                        ),
                                        child: Column(

                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            SizedBox(
                                              height: 5,
                                            ),

                                            Text('Project ID : ',style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),),
                                            Text('38y78798792789',style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 100,
                                      ),
                                      Column(
                                        children: const [

                                          Text(
                                            '1h ago',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12
                                            ),
                                          ),
                                          Icon(Icons.menu_outlined),
                                        ],
                                      ),

                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      '#17 opened 1 day ago'
                                      ,style: TextStyle(
                                        fontSize: 14
                                    ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Bug : '
                                      ,style: TextStyle(
                                        fontSize: 14
                                    ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Down Button is not working'
                                      ,style: TextStyle(
                                        fontSize: 14
                                    ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Project Title : '
                                      ,style: TextStyle(
                                        fontSize: 14
                                    ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'ShopifyX: Revolutionizing Online Shopping'
                                      ,style: TextStyle(
                                        fontSize: 14
                                    ),
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: selectedTabIndex == 4, // Show content when "Description" tab is selected
                    child: Container(

                      width: double.infinity,
                      color: Colors.white,
                      child:Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              height: 350,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    // Adjust padding as neededchild:
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        const CircleAvatar(
                                          radius: 20, // Adjust the radius as needed
                                          backgroundImage: NetworkImage('https://tse2.mm.bing.net/th?id=OIP.YWbAiIEMaJ8V1zyHUPfENQHaHa&pid=Api&P=0&h=220'), // Replace with your image
                                        ),
                                        const SizedBox(width: 13.0), // Add spacing between the image and text
                                        Column(
                                          children: const [
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
                                        const SizedBox(
                                          width: 50,
                                        ),
                                        IconButton(onPressed: (){
                                          setState(() {
                                            isIconSelected = !isIconSelected;
                                          });
                                        }, icon: isIconSelected ? const Icon(Icons.bookmark) : const Icon(Icons.bookmark_border_outlined)),

                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 197,
                                    width: double.infinity,
                                    child:const ContentScreen(),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: const Text(
                                      'ShopifyX: Revolutionizing Online Shopping'
                                      ,style: TextStyle(
                                        fontSize: 17
                                    ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(left:15),
                                      child: const Text(
                                        "Discription : ShopifyX leverages advanced AI and machine learning algorithms to understand ea"
                                        ,style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w300,
                                      ),
                                      )
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),

                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            Container(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              height: 350,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    // Adjust padding as neededchild:
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        const CircleAvatar(
                                          radius: 20, // Adjust the radius as needed
                                          backgroundImage: NetworkImage('https://tse2.mm.bing.net/th?id=OIP.YWbAiIEMaJ8V1zyHUPfENQHaHa&pid=Api&P=0&h=220'), // Replace with your image
                                        ),
                                        const SizedBox(width: 13.0), // Add spacing between the image and text
                                        Column(
                                          children: const [
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
                                        const SizedBox(
                                          width: 50,
                                        ),
                                        IconButton(onPressed: (){
                                          setState(() {
                                            isIconSelected = !isIconSelected;
                                          });
                                        }, icon: isIconSelected ? const Icon(Icons.bookmark) : const Icon(Icons.bookmark_border_outlined)),

                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 197,
                                    width: double.infinity,
                                    child:const ContentScreen(),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: const Text(
                                      'ShopifyX: Revolutionizing Online Shopping'
                                      ,style: TextStyle(
                                        fontSize: 17
                                    ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(left:15),
                                      child: const Text(
                                        "Discription : ShopifyX leverages advanced AI and machine learning algorithms to understand ea"
                                        ,style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w300,
                                      ),
                                      )
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: selectedTabIndex == 9, // Show content when "Description" tab is selected
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Image.network('https://tse2.mm.bing.net/th?id=OIP.Uv5agU9QkcWZaPZrsb6U5AAAAA&pid=Api&P=0&h=220')
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:card_swiper/card_swiper.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:levelupindia/widgets/Content_screen.dart';

import '../Project/projectscreen.dart';
import '../widgets/Snackbar.dart';


class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  String selectedCategory = 'All'; // Default selected category
  String statuss = 'All'; // Default selected category
  bool isSelected = false; // Default checkbox state
  List<String> status = ['All','Completed', 'Ongoing'];
  List<String> categories = ['All','Smart Education', 'Technology', 'Healthcare'];
  get selectedOption => null;
  bool isLiked = false;

  void _showFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Category',style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),),
                          DropdownButton<String>(
                            value: selectedCategory,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedCategory = newValue ?? '';
                              });
                            },
                            items: categories.map((String category) {
                              return DropdownMenuItem<String>(
                                value: category,
                                child: Text(category),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Status',style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),),
                          DropdownButton<String>(
                            value: statuss,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedCategory = newValue ?? '';
                              });
                            },
                            items: status.map((String category) {
                              return DropdownMenuItem<String>(
                                value: category,
                                child: Text(category),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ListTile(
                    title: Text('Top Liked Projects',style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),),
                    leading: Checkbox(
                      checkColor: Colors.black,
                      value:(){
                        if(selectedOption == 'Student'){
                          return true;
                        }else{
                          return false;
                        }
                      }(), onChanged: (bool? value) {  },

                    ),
                  ),
                  ListTile(
                    title: Text('Software',style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),),
                    leading: Checkbox(
                      checkColor: Colors.black,
                      value:(){
                        if(selectedOption == 'Student'){
                          return true;
                        }else{
                          return false;
                        }
                      }(), onChanged: (bool? value) {  },

                    ),
                  ),
                  ListTile(
                    title: Text('Hardware',style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),),
                    leading: Checkbox(
                      checkColor: Colors.black,
                      value:(){
                        if(selectedOption == 'Student'){
                          return true;
                        }else{
                          return false;
                        }
                      }(), onChanged: (bool? value) {  },

                    ),
                  ),

                  ListTile(
                    title: Text('Top Commented Projects',style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),),
                    leading: Checkbox(
                      checkColor: Colors.white,
                      value:(){
                        if(selectedOption == 'Student'){
                          return true;
                        }else{
                          return false;
                        }
                      }(), onChanged: (bool? value) {  },

                    ),
                  ),
                  ListTile(
                    title: Text('Top Saved Projects',style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),),
                    leading: Checkbox(
                      checkColor: Colors.white,
                      value:(){
                        if(selectedOption == 'Student'){
                          return true;
                        }else{
                          return false;
                        }
                      }(), onChanged: (bool? value) {  },

                    ),
                  ),
                  ListTile(
                    title: Text('Top Shared Projects',style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),),
                    leading: Checkbox(
                      checkColor: Colors.white,
                      value:(){
                        if(selectedOption == 'Student'){
                          return true;
                        }else{
                          return false;
                        }
                      }(), onChanged: (bool? value) {  },

                    ),
                  ),

                ],
              ),
            );
          },
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Row(
                children: [

                  const SizedBox(width: 30),
                  Container(
                    height: 53,
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        //change the color to white
                        fillColor: Colors.white,
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  IconButton(
                    onPressed: () {
                      _showFilterBottomSheet();
                    },
                    icon: const Icon(Icons.filter_alt_outlined),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
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
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                            icon: (!isLiked)?Icon(Icons.favorite_border_outlined,color: Colors.black,)
                                :Icon(Icons.favorite,color: Colors.black,),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.comment),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            onPressed: () {ScaffoldMessenger.of(context).showSnackBar(createSnackBar("Saved"));},
                            icon: const Icon(Icons.save),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            InkWell(
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
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            onPressed: () {ScaffoldMessenger.of(context).showSnackBar(createSnackBar("Liked"));},
                            icon: const Icon(Icons.favorite_border),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.comment),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            onPressed: () {ScaffoldMessenger.of(context).showSnackBar(createSnackBar("Saved"));},
                            icon: const Icon(Icons.save),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            InkWell(
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
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            onPressed: () {ScaffoldMessenger.of(context).showSnackBar(createSnackBar("Liked"));},
                            icon: const Icon(Icons.favorite_border),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.comment),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            onPressed: () {ScaffoldMessenger.of(context).showSnackBar(createSnackBar("Saved"));},
                            icon: const Icon(Icons.save),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}

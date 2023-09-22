import 'package:card_swiper/card_swiper.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:levelupindia/widgets/Content_screen.dart';

import 'Project/projectscreen.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
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
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
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
                          'ShopifyX: Revolutionizing Online Shopping'
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
                          "Discription : ShopifyX leverages advanced AI and machine learning algorithms to understand ea"
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
                            onPressed: () {},
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
                            onPressed: () {},
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
            Container(
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
                      'ShopifyX: Revolutionizing Online Shopping'
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
                        "Discription : ShopifyX leverages advanced AI and machine learning algorithms to understand ea"
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
                          onPressed: () {},
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
                          onPressed: () {},
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
            SizedBox(
              height: 13,
            ),
            Container(
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
                      'ShopifyX: Revolutionizing Online Shopping'
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
                        "Discription : ShopifyX leverages advanced AI and machine learning algorithms to understand ea"
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
                          onPressed: () {},
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
                          onPressed: () {},
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
          ],

        ),
      ),
    );
  }
}

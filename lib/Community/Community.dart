import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    int productIndex = 0;
    return Scaffold(
      body: Column(
        children: [
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
          SizedBox(height: 20),
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (context, index, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.green.withOpacity(0.4),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage('https://tse2.mm.bing.net/th?id=OIP.EO9E0W34HN4zszoI8PmRdwHaE8&pid=Api&P=0&h=220'),
                          ),
                        ),
                        Text(
                          'Bio-Diversity',
                          maxLines: 2,
                          style:TextStyle(

                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        )
                        ,Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Text(
                                "Join",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                )

                              ),
                            ),
                          ),
                        )
                      ],
                    )
                ),
              );
            },
            options: CarouselOptions(
              autoPlayCurve: Curves.easeInOut,
              height: 210,
              viewportFraction: 0.4,
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
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.green.withOpacity(0.4),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.vLkZ-tcf6X3vo0HG9L-FjAHaHa&pid=Api&rs=1&c=1&qlt=95&w=122&h=122'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ai Learning',style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),  ),
                      Text('Smart Learning',style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                  SizedBox(
                    width:100,
                  ),
                  Icon(Icons.notification_important_outlined,color: Colors.black),
                  SizedBox(
                    width:10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 13,
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
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.green.withOpacity(0.4),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.vLkZ-tcf6X3vo0HG9L-FjAHaHa&pid=Api&rs=1&c=1&qlt=95&w=122&h=122'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ai Learning',style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),  ),
                      Text('Smart Learning',style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                  SizedBox(
                    width:100,
                  ),
                  Icon(Icons.notification_important_outlined,color: Colors.black),
                  SizedBox(
                    width:10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 13,
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
        ]
      )
    );
  }
}

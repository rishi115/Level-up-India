import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Problems extends StatefulWidget {
  const Problems({Key? key}) : super(key: key);

  @override
  State<Problems> createState() => _ProblemsState();
}

class _ProblemsState extends State<Problems> {
  List<String> Problems =['Climate Change','Biodiversity Loss','Poverty and Economic Inequality','Global Health','Food Security',
  'Technological Advancements'];
  int productIndex = 0;
  final List<Tab> tabs = <Tab>[
    Tab(text: 'Ongoing'),
    Tab(text: 'Completed'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
          backgroundColor: Color(0xff0d1508),
        body: Column(
          children: [
            const SizedBox(height: 10), // Add some spacing
            TabBar(
              tabs: tabs,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left:20.0),
                          child: Text(
                            "Reccomended for you",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500,
                          ),),
                        ),
                        SizedBox(height: 10),
                        CarouselSlider.builder(
                          itemCount: Problems.length,
                          itemBuilder: (context, index, i) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.grey.shade500,
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
                                      children:  [
                                        Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 200,
                                            minWidth: 200,
                                          ),
                                          child: Text(Problems[index],style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                        ),
                                        Text('Disater Management',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      ],
                                    ),
                                    const SizedBox(

                                    ),
                                    Column(
                                      children: const [
                                        SizedBox(
                                          height: 17,
                                        ),
                                        Text(
                                          '1h ago',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12
                                          ),
                                        ),
                                        Icon(Icons.add_circle_outline,size: 35,color: Colors.brown,),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            );
                          },
                          options: CarouselOptions(
                            autoPlayCurve: Curves.easeInOut,
                            height: 110,
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
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left:20.0),
                          child: Text(
                            "Completed",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500,
                          ),),
                        ),
                        ListView.builder(itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.grey.shade500,
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
                                    children:  [
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 250,
                                          minWidth: 250,
                                        ),
                                        child: Text(Problems[index],style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      ),
                                      Text('Disater Management',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ],
                                  ),
                                  const SizedBox(

                                  ),
                                  Column(
                                    children: const [
                                      SizedBox(
                                        height: 17,
                                      ),
                                      Text(
                                        '1h ago',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12
                                        ),
                                      ),
                                      Icon(Icons.add_circle_outline,size: 35,color: Colors.brown,),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          );
                        },
                          itemCount: Problems.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                        )
                      ],
                    ),
                  ),
                  ListView.builder(itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.grey.shade500,
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
                              children:  [
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 250,
                                    minWidth: 250,
                                  ),
                                  child: Text(Problems[index],style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                ),
                                Text('Disater Management',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                              ],
                            ),
                            const SizedBox(

                            ),
                            Column(
                              children: const [
                                SizedBox(
                                  height: 17,
                                ),
                                Text(
                                  '1h ago',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12
                                  ),
                                ),
                                Icon(Icons.add_circle_outline,size: 35,color: Colors.brown, ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    );
                  },
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

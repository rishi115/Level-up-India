import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Problems extends StatefulWidget {
  const Problems({Key? key}) : super(key: key);

  @override
  State<Problems> createState() => _ProblemsState();
}

class _ProblemsState extends State<Problems> {
  String selectedCategory = 'All'; // Default selected category
  String statuss = 'All'; // Default selected category
  bool isSelected = false; // Default checkbox state
  List<String> status = ['All','Completed', 'Ongoing'];
  List<String> categories = ['All','Smart Education', 'Technology', 'Healthcare'];
  get selectedOption => null;

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
                        SizedBox(height: 20),
                        Container(
                          child: Row(
                            children: [

                              const SizedBox(width: 30),
                              Container(

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
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
                                icon: const Icon(Icons.filter_alt_outlined,color: Colors.white,),
                              ),
                            ],
                          ),
                        ),
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
                  Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        child: Row(
                          children: [

                            const SizedBox(width: 30),
                            Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
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
                              icon: const Icon(Icons.filter_alt_outlined,color: Colors.white,),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

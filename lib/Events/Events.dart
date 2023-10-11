import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  int productIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Text('Events',
          style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        backgroundColor: Colors.brown.withOpacity(0.8)
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 40.0,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
    ),
              child: Text(
                "Upcoming Events",style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
              ),
            ),
            CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.brown.withOpacity(0.8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Image.network('https://tse1.mm.bing.net/th?id=OIP.GLsHbSAVrkXKCzBl2az9eAHaD4&pid=Api&P=0&h=220')),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Event Name : Hackathon',
                              style:TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 9.0),
                          child: Text(
                            'Time : 10:00 AM',
                            style:TextStyle(
                              color: Colors.white,
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
                height: 240,
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
              height: 15.0,
            ),
            Container(
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                "Ongoing Events",style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
              ),
            ),
            CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.brown.withOpacity(0.8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: Image.network('https://tse1.mm.bing.net/th?id=OIP.GLsHbSAVrkXKCzBl2az9eAHaD4&pid=Api&P=0&h=220')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Event Name : Hackathon',
                              style:TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 9.0),
                            child: Text(
                              'Time : 10:00 AM',
                              style:TextStyle(
                                color: Colors.white,
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
                height: 240,
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
              height: 15.0,
            ),
            Container(
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                "Past Events",style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
              ),
            ),
            CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.brown.withOpacity(0.8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: Image.network('https://tse1.mm.bing.net/th?id=OIP.GLsHbSAVrkXKCzBl2az9eAHaD4&pid=Api&P=0&h=220')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Event Name : Hackathon',
                              style:TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 9.0),
                            child: Text(
                              'Time : 10:00 AM',
                              style:TextStyle(
                                color: Colors.white,
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
                height: 240,
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
          ],
        ),
      )
    );
  }
}

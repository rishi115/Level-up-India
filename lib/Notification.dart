import 'package:flutter/material.dart';
class Notificationion extends StatefulWidget {
  const Notificationion({super.key});

  @override
  State<Notificationion> createState() => _NotificationionState();
}

class _NotificationionState extends State<Notificationion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notiication',style: TextStyle(
          color: Colors.black,
        ),),
        backgroundColor: Colors.brown.shade50,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:13.0,left: 20,right: 20),
        child:  Column(
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
                      width: 30,
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
                        Icon(Icons.more_vert),
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
                      width: 30,
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
                        Icon(Icons.more_vert),
                      ],
                    ),

                  ],
                ),
              ),
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

          ],
        ),

      ),
    );;
  }
}

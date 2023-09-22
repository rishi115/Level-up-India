import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/Content_screen.dart';

class Project_Details extends StatefulWidget {
  const Project_Details({super.key});

  @override
  State<Project_Details> createState() => _Project_DetailsState();
}

class _Project_DetailsState extends State<Project_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Details'),
        backgroundColor:  Color(0xff2c100c),
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14.0,right: 8.0,top: 9.0),
            child: Container(
              height: 199,
              width: double.infinity,
              child:ContentScreen(),
            ),
          ),
        ],
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:levelupindia/widgets/Button.dart';

import '../login_page.dart';
import '../navbar.dart';
import '../widgets/colors.dart';
class CollegeRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: textColor,
       body: RegistrationForm(),
      ),
    );
  }
}

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            SizedBox(height: 50.0),
            Center(
              child: Column(
                children: [
                MyButton(onTap: (){}, text: 'COLLEGE REGISTRATION'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'COLLEGE NAME'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'AISHE CODE'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'OFFICIAL COLLEGE MAIL'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'PHONE NO'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'ADDRESS LINE 1'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'ADDRESS LINE 2'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'CITY'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'DISTRICT'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'STATE'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'ZIPCODE'),
            ),
            SizedBox(height: 20.0),
            MyButton(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage(onTap: () {  },)),
              );
            }, text: "Submit"),
          ],
        ),
      ),
    );
  }
}
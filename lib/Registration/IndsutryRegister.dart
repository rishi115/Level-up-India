import 'package:flutter/material.dart';
import 'package:levelupindia/navbar.dart';

import '../login_page.dart';
import '../widgets/Button.dart';
import '../widgets/colors.dart';

class IndustryRegister extends StatelessWidget {
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
            SizedBox(
              height: 50.0,
            ),
            MyButton(onTap: (){}, text: 'INDUSTRY REGISTRATION'),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'INDUSTRY NAME'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'OFFICIAL EMAIL ADDRESS'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'PHONE NO.'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'LOCATION'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'ADDRESS'),
            ),
            SizedBox(height: 20.0),
            MyButton(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage(onTap: () {  },)),
              );
            }, text: 'Submit'),
          ],
        ),
      ),
    );
  }
}
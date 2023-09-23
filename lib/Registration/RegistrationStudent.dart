import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levelupindia/Home_page.dart';
import 'package:levelupindia/widgets/Button.dart';
import 'package:levelupindia/widgets/colors.dart';

import '../login_page.dart';
import '../navbar.dart';

class StudentRegistrationForm extends StatefulWidget {
  @override
  State<StudentRegistrationForm> createState() => _StudentRegistrationFormState();
}

class _StudentRegistrationFormState extends State<StudentRegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: textColor,

        body: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            MyButton(onTap: (){}, text: "Student Registration Form"),
            StudentForm(),
          ],
        ),
      ),
    );
  }
}

class StudentForm extends StatefulWidget {
  @override
  _StudentFormState createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController branchController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController aisheCodeController = TextEditingController();
  TextEditingController directorController = TextEditingController();
  TextEditingController collegeNameController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: nameController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: branchController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(labelText: 'Branch'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your branch';
                }
                return null;
              },
            ),
            TextFormField(
              controller: yearController,
              decoration: InputDecoration(labelText: 'Year'),
              style: TextStyle(color: Colors.white),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your year';
                }
                return null;
              },
            ),
            TextFormField(
              controller: aisheCodeController,
              decoration: InputDecoration(labelText: 'AISHE Code'),
              style: TextStyle(color: Colors.white),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your AISHE Code';
                }
                return null;
              },
            ),
            TextFormField(
              controller: directorController,
              decoration: InputDecoration(labelText: 'Director'),
              style: TextStyle(color: Colors.white),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the director\'s name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: collegeNameController,
              decoration: InputDecoration(labelText: 'College Name'),
              style: TextStyle(color: Colors.white),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the college name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: phoneNoController,
              decoration: InputDecoration(labelText: 'Phone Number'),
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your phone number';
                }
                return null;
              },
            ),
            SizedBox(height: 60.0),
            MyButton(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage(onTap: () {  },)),
              );
            }, text:"Submit")
          ],
        ),
      ),
    );
  }
}

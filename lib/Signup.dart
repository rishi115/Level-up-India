import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levelupindia/login_page.dart';

import 'RegistrationStudent.dart';
import 'widgets/Button.dart';
import 'widgets/Square_tile.dart';
import 'widgets/Text_field.dart';
import 'widgets/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? selectedOption;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  double fem = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:textColor  ,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),

                  // logo
                  const Icon(
                    Icons.diamond,
                    size: 100,
                    color: Colors.white,
                  ),

                  const SizedBox(height: 50),

                  // welcome back, you've been missed!
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text('Student',style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),),
                        leading: Checkbox(
                          checkColor: Colors.white,
                          value: selectedOption == 'Student',
                          onChanged: (value) {
                            setState(() {
                              if (value == true) {
                                selectedOption = 'Student';
                              } else {
                                selectedOption = null;
                              }
                            });
                          },
                        ),
                      ),ListTile(
                        title: Text('Industry/Company',
                          style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),),
                        leading: Checkbox(
                          value: selectedOption == 'Industry/Company',
                          onChanged: (value) {
                            setState(() {
                              if (value == true) {
                                selectedOption = 'Industry/Company';
                              } else {
                                selectedOption = null;
                              }
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: Text('Institute', style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),),
                        leading: Checkbox(
                          value: selectedOption == 'Institute',
                          onChanged: (value) {
                            setState(() {
                              if (value == true) {
                                selectedOption = 'Institute';
                              } else {
                                selectedOption = null;
                              }
                            });
                          },
                        ),
                      ),
                    ],
                  ),


                  const SizedBox(height: 25),

                  // email textfield

                  Visibility(
                    visible: selectedOption == 'Student',
                    child: Column(
                      children: [
                        MyTextField(
                          controller: emailController,
                          hintText: 'Email',
                          obscureText: false,
                        ),
                        const SizedBox(height: 10),
                        MyTextField(
                          controller: passwordController,
                          hintText: 'Password',
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: selectedOption == 'Industry/Company',
                    child: Column(
                      children: [
                        // Add industry/company specific fields here
                        // Example:
                        MyTextField(
                          controller: emailController,
                          hintText: 'Company Email',
                          obscureText: false,
                        ),
                        const SizedBox(height: 10),
                        MyTextField(
                          controller: passwordController,
                          hintText: 'Company Password',
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: selectedOption == 'Institute', // Remove the extra space after 'Institute'
                    child: Column(
                      children: [
                        MyTextField(
                          controller: emailController,
                          hintText: 'Institute ID',
                          obscureText: false,
                        ),
                        const SizedBox(height: 10),
                        MyTextField(
                          controller: passwordController,
                          hintText: 'Password',
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  // sign in button
                  MyButton(
                    text:' Sign up',
                    onTap: (){if (selectedOption == 'Student') {
                      // Student sign-in logic
                      String email = emailController.text;
                      String password = passwordController.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StudentRegistrationForm()),
                      );
                      // Do something with email and password for student sign-in
                    } else if (selectedOption == 'Industry/Company') {
                      // Industry/Company sign-in logic
                      String companyEmail = emailController.text;
                      String companyPassword = passwordController.text;
                      // Do something with companyEmail and companyPassword for industry sign-in
                    }else if (selectedOption == 'Institute') {
                      // Industry/Company sign-in logic
                      String companyEmail = emailController.text;
                      String companyPassword = passwordController.text;
                      // Do something with companyEmail and companyPassword for industry sign-in
                    }},
                  ),

                  const SizedBox(height: 50),

                  // not a member? register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already Member? ',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: (){
                         Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage(onTap: (){})
                            ),
                          );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );;
  }
}

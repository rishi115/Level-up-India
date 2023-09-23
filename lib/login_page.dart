

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:levelupindia/widgets/Button.dart';
import 'package:levelupindia/Signup.dart';
import 'package:levelupindia/widgets/Snackbar.dart';
import 'package:levelupindia/widgets/Square_tile.dart';
import 'package:levelupindia/widgets/Text_field.dart';
import 'package:levelupindia/widgets/colors.dart';
import 'package:levelupindia/navbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Model.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key,required this.onTap});


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  // void signUserIn() async {
  //   // show loading circle
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return const Center(
  //         child: CircularProgressIndicator(),
  //       );
  //     },
  //   );

    // try sign in
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: emailController.text,
  //       password: passwordController.text,
  //     );
  //     // pop the loading circle
  //     Navigator.pop(context);
  //   } on FirebaseAuthException catch (e) {
  //     // pop the loading circle
  //     Navigator.pop(context);
  //     // WRONG EMAIL
  //     if (e.code == 'user-not-found') {
  //       // show error to user
  //       wrongEmailMessage();
  //     }
  //
  //     // WRONG PASSWORD
  //     else if (e.code == 'wrong-password') {
  //       // show error to user
  //       wrongPasswordMessage();
  //     }
  //   }
  // }

  // wrong email message popup
  // void wrongEmailMessage() {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return const AlertDialog(
  //         backgroundColor: textColor,
  //         title: Center(
  //           child: Text(
  //             'Incorrect Email',
  //             style: TextStyle(color: Colors.white),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  // wrong password message popup
  // void wrongPasswordMessage() {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return const AlertDialog(
  //         backgroundColor: textColor,
  //         title: Center(
  //           child: Text(
  //             'Incorrect Password',
  //             style: TextStyle(color: Colors.white),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
  bool authorizeAccess(String email, String password) {
    // Iterate through the list of users and check if there's a match
    for (User user in users) {
      if (user.email == email && user.password == password) {
        return true; // Authorization successful
      }
    }
    return false; // Authorization failed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:textColor  ,
      body: SafeArea(
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
                Container(
                  height: 40,
                  width: 300,

                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                      'Level Up India',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // email textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // sign in button
                MyButton(
                  text: "Signin",
                  onTap: ()async{
                    if (authorizeAccess(emailController.text, passwordController.text)) {
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      await prefs.setString('user_email', passwordController.text.toString());
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => nav_bar(usertype: 123,)),
                      );
                      print('Access granted'); // User is authorized
                    } else {
                      print('Access denied');
                      ScaffoldMessenger.of(context).showSnackBar(createSnackBar("Incorrect Email"));// User is not authorized
                    }


                  },
                ),

                const SizedBox(height: 50),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),

                // google + apple sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Center(child: SquareTile(onTap:(){},imagePath: 'https://raw.githubusercontent.com/mitchkoko/ModernLoginUI/main/lib/images/google.png',)),
                  ],
                ),

                const SizedBox(height: 50),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: (){

                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                      },
                      child: const Text(
                        'Register now',
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
    );
  }
}
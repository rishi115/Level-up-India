import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:levelupindia/login_page.dart';
import 'package:levelupindia/navbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? storedEmail = prefs.getString('user_email');
  // await dotenv.load(
  //     fileName: ".env" // You can move this to a global location
  // );
  runApp(MyApp(storedEmail: storedEmail));
}

class MyApp extends StatelessWidget {
  final String? storedEmail;

  const MyApp({Key? key, this.storedEmail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Check if there's a stored email
    if (storedEmail != null && storedEmail!.isNotEmpty) {
      // If there's a stored email, navigate to MainView
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Your App Title',
        theme: ThemeData(
          // Your app's theme configuration
        ),
        home: nav_bar(usertype: 123,),
      );
    } else {
      // If there's no stored email, navigate to LoginPage
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Your App Title',
        theme: ThemeData(
          // Your app's theme configuration
        ),
        home: LoginPage(onTap: () {}),
      );
    }
  }
}

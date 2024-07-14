import 'package:flutter/material.dart';
import 'package:project/Screens/homeScreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen());
  }
}
class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? isChecked = false;

 

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.home_filled,
                  color: Colors.blue[800],
                  size: 130,
                ),
              ),
              Text(
                "Login to your Account",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(3),
                    prefixIcon: Icon(Icons.email),
                    labelText: "Enter your email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: TextField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(3),
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Enter password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: Colors.blue[900],
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool;
                      });
                    },
                  ),
                  Text("Remember me"),
                ],
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                    ),
                  );
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    // Handle forgot password tap
                  },
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Center(
                child: Text(
                  "Or continue with",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      // Handle Facebook login
                    },
                    icon: Icon(Icons.facebook_rounded, color: Colors.blue, size: 30),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle Google login
                    },
                    icon: Icon(Icons.g_mobiledata, color: Colors.blue, size: 30),
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle Apple login
                    },
                    icon: Icon(Icons.apple, color: Colors.black, size: 30),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      // Handle sign up tap
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    ;
  }
}
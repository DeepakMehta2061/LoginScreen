import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? emailError;
  String? passwordError;
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Page',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 126, 230),
      ),
      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFF3F8FF),
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Login to MyApp",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Text("Welcome Back!", style: TextStyle(fontSize: 17)),
              Text(
                "Please sign in to continue.",
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(height: 20),

              SizedBox(
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    errorText: emailError,
                    labelText: "Email or Phone number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),

              SizedBox(
                child: TextField(
                  controller: passwordController,
                  obscureText: isPasswordHidden,
                  decoration: InputDecoration(
                    errorText: passwordError,
                    labelText: "Password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordHidden = !isPasswordHidden;
                        });
                      },
                      icon: Icon(
                        isPasswordHidden
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      final email = emailController.text.trim();
                      final password = passwordController.text;

                      setState(() {
                        if (email.isEmpty) {
                          emailError = "Please enter your email.";
                        } else {
                          emailError = null;
                        }

                        if (password.isEmpty) {
                          passwordError = "Please enter password ";
                        } else if (password.length < 6) {
                          passwordError =
                              "Password must contain at least 6 letters";
                        } else {
                          passwordError = null;
                        }
                      });
                      if (emailError == null && passwordError == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Login Successful")),
                        );
                      }
                    },
                    child: const Text("Login"),
                  ),
                ),
              ),
              SizedBox(height: 15),

              Center(
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(fontSize: 13, color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}

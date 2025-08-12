import 'package:flutter/material.dart';

void main() {
  runApp(LoginUi());
}

class LoginUi extends StatelessWidget {
  LoginUi({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Demo',
      home: Scaffold(
        // backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          foregroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: MediaQuery.of(context).size.height * 0.3,
          // centerTitle: true,
          title: Center(
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 7,
                shadows: [
                  Shadow(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(2, -2),
                    blurRadius: 5,
                  ),
                  Shadow(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(2, 2),
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 129, 41, 141),
                  const Color.fromARGB(255, 173, 17, 90),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                // bottomRight: Radius.circular(30),
              ),
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // MainAxisAlignment.center
              children: [
                // SizedBox(height: 40),
                Text(
                  'Welcome',
                  style: TextStyle(
                    // letterSpacing: 2,
                    color: const Color.fromARGB(255, 110, 34, 60),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    // color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 350,
                  height: 60,
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.email,
                          color: const Color.fromARGB(255, 173, 17, 90),
                          size: 30,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 350,
                  height: 60,
                  child: TextField(
                    controller: passwordController,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      // obscureText: true,
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.lock,
                          color: const Color.fromARGB(255, 173, 17, 90),
                          size: 30,
                        ),
                      ),
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    String email = emailController.text;
                    String password = passwordController.text;
                    if (email.isEmpty || password.isEmpty) {
                      debugPrint('Please fill in all fields');
                    } else {
                      debugPrint('Email: $email');
                      debugPrint('Password: $password');
                      // Here you can add your login logic
                      // For example, you can call an API to authenticate the user
                    }
                    debugPrint('--------------------------------------');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    foregroundColor: const Color.fromARGB(179, 0, 0, 0),
                    // shadowColor: const Color.fromARGB(255, 173, 17, 90),
                    backgroundColor: const Color.fromARGB(255, 97, 9, 85),
                  ),
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 194, 187, 187),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

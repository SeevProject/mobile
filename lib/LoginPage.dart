// ignore_for_file: unused_import, unused_local_variable

import 'package:cv/Name.dart';
import 'package:cv/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          //logo
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: Container(
                  width: 275,
                  height: 150,
                  color: const Color(0x001c7ffc),
                  child: const Image(image: AssetImage("assets/logo.png")),
                ),
              )
            ],
          ),

          // head text
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: SizedBox(
                  width: 268,
                  height: 80,
                  child: Center(
                    child: Text(
                      "    Authenticate\n with an account.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),

          //intorduction

          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 268,
                  height: 80,
                  child: Center(
                    child: Text(
                      "   And from there we’ll make \n           you a cv you’ll love.",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),

          // Facebook

          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Column(
              children: [
                Container(
                  width: 210,
                  height: 51,
                  color: const Color.fromARGB(255, 28, 127, 252),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 15, 113, 234),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Welcome()),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Facebook',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Image(image: AssetImage("assets/face.png")),
                        ],
                      )),
                ),
              ],
            ),
          ),

          // google
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(
                  width: 210,
                  height: 51,
                  color: const Color.fromARGB(255, 28, 127, 252),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Welcome()),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Google',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Image(image: AssetImage("assets/google.png")),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

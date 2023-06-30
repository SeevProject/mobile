import 'package:cv/Contact.dart';
import 'package:cv/welcome.dart';
import 'package:flutter/material.dart';

class UserNames extends StatefulWidget {
  const UserNames({super.key});

  @override
  State<UserNames> createState() => _UserNamesState();
}

class _UserNamesState extends State<UserNames> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // upper text

          const Padding(
            padding: EdgeInsets.only(top: 130),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 150),
                  child: Text(
                    " Enter your\n fullname.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, right: 140),
                  child: Center(
                    child: Text(
                      "Enter your name\ncorrectly!",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // text fields

          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 95, right: 190),
                child: Text(
                  "First name",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ),

              // field of name
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 30),
                child: Container(
                  width: 272,
                  height: 55,
                  color: const Color.fromARGB(255, 235, 235, 235),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 28, 127, 252),
                      hintText: "Your full name",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.9, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),

              // middle name

              const Padding(
                padding: EdgeInsets.only(top: 35, right: 170),
                child: Text(
                  "Middle name",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ),

              // field of name
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 30),
                child: Container(
                  color: const Color.fromARGB(255, 235, 235, 235),
                  width: 272,
                  height: 55,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 28, 127, 252),
                      hintText: "Your middle name",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.9, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),

              // last name

              const Padding(
                padding: EdgeInsets.only(top: 35, right: 190),
                child: Text(
                  "Last name",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ),

              // field of name
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 30),
                child: Container(
                  color: const Color.fromARGB(255, 235, 235, 235),
                  width: 272,
                  height: 55,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 28, 127, 252),
                      hintText: "Your Last name",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.9, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              // back button
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 55, right: 20),
                child: SizedBox(
                  width: 126,
                  height: 51,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor:
                            const Color.fromARGB(255, 236, 236, 236),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Welcome()),
                        );
                      },
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Image(
                              image: AssetImage("assets/Button.png"),
                              width: 24,
                              height: 24,
                            ),
                          ),
                          Text(
                            'Back',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20),
                          ),
                        ],
                      )),
                ),
              ),

              // next button
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 126,
                  height: 51,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor:
                            const Color.fromARGB(255, 15, 113, 234),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Contact()),
                        );
                      },
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Image(
                              image: AssetImage("assets/next.png"),
                              width: 24,
                              height: 24,
                            ),
                          ),
                          Text(
                            'Next',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

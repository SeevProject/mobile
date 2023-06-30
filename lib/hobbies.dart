import 'package:cv/process_page.dart';
import 'package:cv/skills.dart';
import 'package:flutter/material.dart';

import 'Contact.dart';

class hobbies extends StatefulWidget {
  const hobbies({super.key});

  @override
  State<hobbies> createState() => _hobbiesState();
}

class _hobbiesState extends State<hobbies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // upper text

          const Padding(
            padding: EdgeInsets.only(top: 110),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 130),
                  child: Text(
                    "What are your\nhobbies.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, right: 110),
                  child: Center(
                    child: Text(
                      "What do you enjoy doing?",
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
                padding: EdgeInsets.only(top: 40, right: 250),
                child: Text(
                  "Hobbies",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ),

              // field of name
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 60),
                child: Container(
                  color: const Color.fromARGB(255, 235, 235, 235),
                  width: 272,
                  height: 70,
                  child: TextFormField(
                    maxLines: 10,
                    minLines: 1,
                    decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 28, 127, 252),
                      hintText:
                          "Whatching series \n\nTell us something about your hobby.",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.9, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 60),
                child: Container(
                  color: const Color.fromARGB(255, 235, 235, 235),
                  width: 272,
                  height: 58,
                  child: TextFormField(
                    maxLines: 10,
                    minLines: 1,
                    decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 28, 127, 252),
                      hintText: "Coding",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.9, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),

              // add
              Padding(
                padding: const EdgeInsets.only(top: 60, right: 60),
                child: SizedBox(
                  width: 272,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add Hobby',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      )),
                ),
              ),

              // last name
              const Padding(
                padding: EdgeInsets.only(top: 15, right: 140),
                child: Center(
                  child: Text(
                    "You can add a description for\nyour hobby by pressing the\nhobby name.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              // back button
              Padding(
                padding: const EdgeInsets.only(top: 90, left: 55, right: 20),
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
                              builder: (context) => const skills()),
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
                padding: const EdgeInsets.only(top: 90),
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
                              builder: (context) => const process_page()),
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

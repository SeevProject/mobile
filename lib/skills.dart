import 'package:cv/hobbies.dart';
import 'package:cv/more_courses.dart';
import 'package:flutter/material.dart';

import 'Contact.dart';

class skills extends StatefulWidget {
  const skills({super.key});

  @override
  State<skills> createState() => _skillsState();
}

class _skillsState extends State<skills> {
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
                    "Describe your\nskills.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, right: 100),
                  child: Center(
                    child: Text(
                      "Let us see what you know.",
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
                padding: EdgeInsets.only(top: 40, right: 280),
                child: Text(
                  "Skills",
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
                      hintText: "Dart \n\n Tell us something about your skill.",
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
                      hintText: "Vue",
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
                            'Add Skill',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      )),
                ),
              ),

              // last name
              const Padding(
                padding: EdgeInsets.only(top: 15, right: 110),
                child: Center(
                  child: Text(
                    "You can change the level by\npressing the numbers. You can\nalso add descriptions by clicking\non the name of the skill.",
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
                              builder: (context) => const more_courses()),
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
                              builder: (context) => const hobbies()),
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

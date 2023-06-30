import 'package:cv/more_courses.dart';
import 'package:flutter/material.dart';

import 'Contact.dart';
import 'education_name.dart';

class courses extends StatefulWidget {
  const courses({super.key});

  @override
  State<courses> createState() => _coursesState();
}

class _coursesState extends State<courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 150),
                      child: Text(
                        "The courses\nyou’ve taken.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, right: 120),
                      child: Center(
                        child: Text(
                          "Tell us about the courses\nyou’ve taken.",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    // fields

                    const Padding(
                      padding: EdgeInsets.only(top: 40, right: 290),
                      child: Text(
                        "Title",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    // years
                    Padding(
                      padding: const EdgeInsets.only(top: 15, right: 60),
                      child: Container(
                        width: 272,
                        height: 55,
                        color: const Color.fromARGB(255, 235, 235, 235),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            fillColor: Color.fromARGB(255, 28, 127, 252),
                            hintText: "Mobile Dev.",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 28, 127, 252)),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0.9, color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, right: 290),
                      child: Text(
                        "Date",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    Container(
                      child: Row(
                        children: [
                          // box time
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, right: 10, left: 40),
                            child: Container(
                              width: 135,
                              height: 55,
                              color: const Color.fromARGB(255, 235, 235, 235),
                              child: TextFormField(
                                maxLines: 5,
                                minLines: 1,
                                decoration: const InputDecoration(
                                  fillColor: Color.fromARGB(255, 28, 127, 252),
                                  hintText:
                                      "\n           2020\n         20 Sep",
                                  labelStyle: TextStyle(
                                      color: Color.fromARGB(255, 28, 127, 252)),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0.9, color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // box step
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, right: 10, left: 10),
                            child: Container(
                              width: 135,
                              height: 55,
                              color: const Color.fromARGB(255, 235, 235, 235),
                              child: TextFormField(
                                maxLines: 5,
                                minLines: 1,
                                decoration: const InputDecoration(
                                  fillColor: Color.fromARGB(255, 28, 127, 252),
                                  hintText: "           Now",
                                  labelStyle: TextStyle(
                                      color: Color.fromARGB(255, 28, 127, 252)),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0.9, color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // normall field

                    const Padding(
                      padding: EdgeInsets.only(top: 30, right: 260),
                      child: Text(
                        "Subjects",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    // years
                    Padding(
                      padding: const EdgeInsets.only(top: 15, right: 60),
                      child: Container(
                        width: 272,
                        height: 55,
                        color: const Color.fromARGB(255, 235, 235, 235),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            fillColor: Color.fromARGB(255, 28, 127, 252),
                            hintText: "UI Design",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 28, 127, 252)),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0.9, color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // add more
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 60),
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
                                  'Add More',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            )),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(top: 30, right: 250),
                      child: Text(
                        "Organizer",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    // years
                    Padding(
                      padding: const EdgeInsets.only(top: 15, right: 60),
                      child: Container(
                        width: 272,
                        height: 55,
                        color: const Color.fromARGB(255, 235, 235, 235),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            fillColor: Color.fromARGB(255, 28, 127, 252),
                            hintText: "Void/Node Group",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 28, 127, 252)),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0.9, color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // about
                    const Padding(
                      padding: EdgeInsets.only(top: 40, right: 270),
                      child: Text(
                        "About",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
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
                            hintText: "I’m learning and\nmaking projects.",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 28, 127, 252)),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0.9, color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // text
                    const Padding(
                      padding: EdgeInsets.only(top: 15, right: 50),
                      child: Center(
                        child: Text(
                          "You’ll enter other courses\nafter this one if you wish.",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    //
                    //
                    //
                    Row(
                      children: [
                        // back button
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 20, top: 50, bottom: 50),
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
                                        builder: (context) =>
                                            const education_name()),
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
                          padding: const EdgeInsets.only(top: 50, bottom: 50),
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
                                        builder: (context) =>
                                            const more_courses()),
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
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

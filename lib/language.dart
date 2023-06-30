import 'package:cv/address.dart';
import 'package:cv/education_degree.dart';
import 'package:flutter/material.dart';

import 'Contact.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
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
                  padding: EdgeInsets.only(right: 100),
                  child: Text(
                    "What languages\ndo you know?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, right: 130),
                  child: Center(
                    child: Text(
                      "Go ahead. Impress us.",
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
                padding: EdgeInsets.only(top: 40, right: 210),
                child: Text(
                  "Languages",
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
                      hintText:
                          "Kurdish                                                5/5",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.9, color: Colors.grey),
                      ),
                    ),
                  ),
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
                      hintText:
                          "Arabic                                                   3/5",
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
                padding: const EdgeInsets.only(top: 60, right: 20),
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
                            'Add language',
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
                    "You can change the level by\npressing the numbers.",
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
                padding: const EdgeInsets.only(top: 190, left: 55, right: 20),
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
                              builder: (context) => const Address()),
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
                padding: const EdgeInsets.only(top: 190),
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
                              builder: (context) => const Education_degree()),
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

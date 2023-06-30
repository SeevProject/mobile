import 'package:cv/Name.dart';
import 'package:cv/information.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width * 8,
        height: MediaQuery.of(context).size.height * 5,
        child: Column(
          children: [
            // text up
            const Padding(
              padding: EdgeInsets.only(right: 80, top: 75),
              child: Text(
                " Enter your\n contact details.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 90),
              child: Center(
                child: Text(
                  "Be very careful here. Don’t\nenter anything wrong!",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // fields
            const Padding(
              padding: EdgeInsets.only(top: 95, right: 250),
              child: Text(
                "Email",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
            ),

            // phone number
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 30),
              child: Container(
                width: 272,
                height: 55,
                color: const Color.fromARGB(255, 235, 235, 235),
                child: TextFormField(
                  decoration: const InputDecoration(
                    fillColor: Color.fromARGB(255, 28, 127, 252),
                    hintText: "jackie@gmail.com",
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.9, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 35, right: 170),
              child: Text(
                "Phone number",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15, right: 30),
              child: Container(
                width: 272,
                height: 55,
                color: const Color.fromARGB(255, 235, 235, 235),
                child: TextFormField(
                  decoration: const InputDecoration(
                    fillColor: Color.fromARGB(255, 28, 127, 252),
                    hintText: "0770 125 1212",
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 28, 127, 252)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.9, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),

            //

            //

            // buttons

            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Row(
                children: [
                  // back button
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 55, right: 20),
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
                                  builder: (context) => const UserNames()),
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
                    child: Container(
                      color: Colors.transparent,
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
                                  builder: (context) => const Information()),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}

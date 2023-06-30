import 'package:cv/Name.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 70),
                  child: Text(
                    " We’ll ask you for\n some info.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15, right: 70),
                  child: Center(
                    child: Text(
                      "A lot of info, actually. It is a CV\nafter all.",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 150, right: 130),
                  child: Center(
                    child: Text(
                      "Approximately it’ll take",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  child:
                   Row(
                    children: [
                      // box time
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 40),
                        child: Row(
                          children: [
                            Container(
                              width: 128,
                              height: 96,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                                color: const Color.fromARGB(255, 236, 236, 236),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Column(
                                  children: [
                                    Text(
                                      "      25 \n Minutes",
                                      style: TextStyle(fontSize: 24),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      // box step
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 40),
                        child: Row(
                          children: [
                            Container(
                              width: 128,
                              height: 96,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                                color: const Color.fromARGB(255, 236, 236, 236),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Column(
                                  children: [
                                    Text(
                                      "   15 \n Steps",
                                      style: TextStyle(fontSize: 24),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // start
// start

                Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: SizedBox(
                    width: 272,
                    height: 51,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 15, 113, 234),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
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
                              padding: EdgeInsets.only(right: 20, left: 65),
                              child: Image(
                                image: AssetImage("assets/next.png"),
                                width: 24,
                                height: 24,
                              ),
                            ),
                            Text(
                              'Start',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class secondscreen extends StatefulWidget {
  const secondscreen({super.key});

  @override
  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: Text(
            "Selected Working Time",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        backgroundColor: Colors.cyan.shade100,
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(100),
                  border: TableBorder.all(
                    color: Colors.black,
                  ),
                  children: [
                    TableRow(children: [
                      Column(
                        children: [
                          Text(
                            "Day",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Shift",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text(
                            "sunday",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "afternoon",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text(
                            "sunday",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "afternoon",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text(
                            "sunday",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "afternoon",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text(
                            "sunday",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "afternoon",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text(
                            "sunday",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "afternoon",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text(
                            "sunday",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "afternoon",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [
                          Text(
                            "sunday",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "afternoon",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ]),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

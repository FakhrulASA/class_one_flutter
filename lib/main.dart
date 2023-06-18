import 'package:flutter/material.dart';

void main() {
  runApp(ClassOne());
}

class ClassOne extends StatefulWidget {
  const ClassOne({Key? key}) : super(key: key);

  @override
  State<ClassOne> createState() => _ClassOneState();
}

class _ClassOneState extends State<ClassOne> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "First Demo Class",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Demo Class 1"),
          ),
          body: Center(
            child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      color: Colors.greenAccent,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Center(
                              child: Text(
                                a.toString(),
                                style: TextStyle(
                                    fontSize: 100,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.orange),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                            onTap: () {
                              a++;
                              setState(() {});
                            },
                            child: Image.asset(
                              "asset/plus.png",
                              height: 80,
                              width: 80,
                            )),
                        GestureDetector(
                            onTap: () {
                              if (a > 0) {
                                a--;
                              }
                              setState(() {});
                            },
                            child: Image.asset(
                              "asset/minus.png",
                              height: 80,
                              width: 80,
                            ))
                      ],
                    )
                  ],
                )),
          ),
        ));
  }
}

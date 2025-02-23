import 'dart:developer';
import 'dart:ui';

import 'package:codequantum/getintouch.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CODEQUANTUM.IN',
      scrollBehavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      }),
      theme: ThemeData(fontFamily: "Roboto_Mono"),
      home: Scaffold(
          appBar: AppBar(
            surfaceTintColor: Colors.transparent,
            backgroundColor: const Color.fromARGB(255, 10, 10, 10),
            title: Column(
              // crossAxisAlignment:,
              children: [
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: LayoutBuilder(builder: (context, constraints) {
                    if (constraints.maxWidth < 1345) {
                      return Row(
                        children: [
                          SizedBox(width: 5),
                          Text(
                            'CODEQUANTUM.IN',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 42, 157, 244),
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          GestureDetector(
                              onTap: () async {
                                final Uri URi = Uri.parse(
                                    'github url');
                                await launchUrl(URi);
                              },
                              child: Text('Projects',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white))),
                          SizedBox(width: 5),
                        ],
                      );
                    } else {
                      return Row(
                        children: [
                          SizedBox(width: 30),
                          Text(
                            'CODEQUANTUM.IN',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 42, 157, 244),
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          GestureDetector(
                              onTap: () async {
                                final Uri URi = Uri.parse(
                                    'github url');
                                await launchUrl(URi);
                              },
                              child: Text('Projects',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white))),
                          SizedBox(width: 30),
                        ],
                      );
                    }
                  }),
                ),
                const SizedBox(height: 20),
                const Divider(
                  height: 10,
                  color: Color.fromARGB(60, 224, 224, 224),
                ),
              ],
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 10, 10, 10),
          body: mainpg()),
    );
  }
}

class mainpg extends StatelessWidget {
  const mainpg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      //mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 50),
        LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 1345) {
            return Row(
              children: [
                Spacer(),
                Text(
                  'Freelance Developer',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Spacer(),
              ],
            );
          } else {
            return Row(
              children: [
                Spacer(),
                Text(
                  'Freelance Developer',
                  style: TextStyle(color: Colors.white, fontSize: 45),
                ),
                Spacer(),
              ],
            );
          }
        }),
        SizedBox(height: 30),
        LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 1345) {
            return Row(
              children: [
                Spacer(),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "I\'m ",
                        style: TextStyle(
                            color: Color.fromARGB(130, 224, 224, 224),
                            fontSize: 17),
                      ),
                      TextSpan(
                        text: "Kartik NHM,",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 42, 157, 244),
                            fontSize: 17),
                      ),
                      TextSpan(
                        text: "\npassionate about developing Applications.",
                        style: TextStyle(
                            color: Color.fromARGB(130, 224, 224, 224),
                            fontSize: 17),
                      )
                    ])),
                Spacer(),
              ],
            );
          } else {
            return Row(
              children: [
                Spacer(),
                RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "I\'m ",
                        style: TextStyle(
                            color: Color.fromARGB(130, 224, 224, 224),
                            fontSize: 17),
                      ),
                      TextSpan(
                        text: "Kartik NHM",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 42, 157, 244),
                            fontSize: 17),
                      ),
                      TextSpan(
                        text: " passionate about developing Applications.",
                        style: TextStyle(
                            color: Color.fromARGB(130, 224, 224, 224),
                            fontSize: 17),
                      )
                    ])),
                Spacer(),
              ],
            );
          }
        }),
        SizedBox(height: 30),
        Row(
          children: [
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const getintouch()));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                padding: const EdgeInsets.all(0.0),
              ),
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Color(0xFF2998EC),
                    Color(0xFF2794E2),
                    Color(0xFF2690DD),
                    Color(0xFF248CCB),
                    Color(0xFF2281C3),
                    Color(0xFF2079BB),
                    Color(0xFF217DBD),
                    Color(0xFF1F76B5),
                    Color(0xFF1E72AB),
                    Color(0xFF1D6FA3),
                    Color(0xFF217CBC),
                  ]),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Container(
                    constraints: const BoxConstraints(
                        minWidth: 88.0,
                        minHeight: 36.0), // min sizes for Material buttons
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      child: const Text(
                        'Get in touch',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    )),
              ),
            ),
            Spacer()
          ],
        ),
        SizedBox(height: 100),
        Row(
          children: [
            Spacer(),
            Text('Featured Projects',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w800)),
            Spacer(),
          ],
        ),
        SizedBox(height: 50),
        LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 1345) {
            return Column(
              children: [
                project1(width: (((MediaQuery.sizeOf(context).width) - 32))),
                SizedBox(height: 50),
                project2(width: (((MediaQuery.sizeOf(context).width) - 32))),
                SizedBox(height: 50),
                project3(width: (((MediaQuery.sizeOf(context).width) - 32))),
              ],
            );
          } else {
            return IntrinsicHeight(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacer(),
                project1(
                    width: (((MediaQuery.sizeOf(context).width) - 256) / 3)),
                SizedBox(width: 50),
                project2(
                    width: (((MediaQuery.sizeOf(context).width) - 256) / 3)),
                SizedBox(width: 50),
                project3(
                    width: (((MediaQuery.sizeOf(context).width) - 256) / 3)),
                Spacer()
              ],
            ));
          }
        }),
        SizedBox(height: 100),
        const Divider(
          height: 10,
          color: Color.fromARGB(60, 224, 224, 224),
        ),
        Text(
          '© 2025 Kartik NHM. All rights reserved.',
          style: TextStyle(
              color: Color.fromARGB(130, 224, 224, 224), fontSize: 17),
        ),
        SizedBox(height: 100),
      ],
    ));
  }
}

class project1 extends StatelessWidget {
  double width;
  project1({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          constraints: BoxConstraints(
            maxWidth: width,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              border: Border.all(color: Color.fromARGB(25, 255, 255, 255)),
              color: const Color.fromARGB(15, 224, 224, 224)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mysql Editor',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'A simple MySQL editor allowing users to connect to and interact with MySQL databases',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 11),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(25, 42, 157, 244),
                            borderRadius: BorderRadius.circular(9)),
                        child: Text(
                          'Java',
                          style: TextStyle(
                              color: Color.fromARGB(255, 42, 157, 244)),
                        )),
                    SizedBox(width: 10),
                    Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 11),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(25, 42, 157, 244),
                            borderRadius: BorderRadius.circular(9)),
                        child: Text(
                          'Java-Swing',
                          style: TextStyle(
                              color: Color.fromARGB(255, 42, 157, 244)),
                        )),
                    SizedBox(width: 10),
                  ],
                )
              ],
            ),
          )),
      onTap: () async {
        final Uri URi = Uri.parse('github url');
        await launchUrl(URi);
      },
    );
  }
}

class project2 extends StatelessWidget {
  double width;
  project2({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: width,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            border: Border.all(color: Color.fromARGB(25, 255, 255, 255)),
            color: const Color.fromARGB(15, 224, 224, 224)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ToDo-App',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'A simple task management application designed to help users organize and track their tasks efficiently.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 11),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(25, 42, 157, 244),
                          borderRadius: BorderRadius.circular(9)),
                      child: Text(
                        'Flutter',
                        style:
                            TextStyle(color: Color.fromARGB(255, 42, 157, 244)),
                      )),
                  SizedBox(width: 10),
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 11),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(25, 42, 157, 244),
                          borderRadius: BorderRadius.circular(9)),
                      child: Text(
                        'MySQL',
                        style:
                            TextStyle(color: Color.fromARGB(255, 42, 157, 244)),
                      )),
                  SizedBox(width: 10),
                ],
              )
            ],
          ),
        ),
      ),
      onTap: () async {
        final Uri URi = Uri.parse('github url');
        await launchUrl(URi);
      },
    );
  }
}

class project3 extends StatelessWidget {
  double width;
  project3({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: width,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            border: Border.all(color: Color.fromARGB(25, 255, 255, 255)),
            color: const Color.fromARGB(15, 224, 224, 224)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CODEQUANTUM.IN',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'The home page for codequantum.in',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth < 1345) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 11),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(25, 42, 157, 244),
                                  borderRadius: BorderRadius.circular(9)),
                              child: Text(
                                'Flutter',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 42, 157, 244)),
                              )),
                          SizedBox(width: 10),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 11),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(25, 42, 157, 244),
                                  borderRadius: BorderRadius.circular(9)),
                              child: Text(
                                'Java-SpringBoot',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 42, 157, 244)),
                              )),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 11),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(25, 42, 157, 244),
                                  borderRadius: BorderRadius.circular(9)),
                              child: Text(
                                'MySQL',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 42, 157, 244)),
                              )),
                        ],
                      ),
                    ],
                  );
                } else {
                  return Row(
                    children: [
                      Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 11),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(25, 42, 157, 244),
                              borderRadius: BorderRadius.circular(9)),
                          child: Text(
                            'Flutter',
                            style: TextStyle(
                                color: Color.fromARGB(255, 42, 157, 244)),
                          )),
                      SizedBox(width: 10),
                      Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 11),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(25, 42, 157, 244),
                              borderRadius: BorderRadius.circular(9)),
                          child: Text(
                            'Java-SpringBoot',
                            style: TextStyle(
                                color: Color.fromARGB(255, 42, 157, 244)),
                          )),
                      SizedBox(width: 10),
                      Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 11),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(25, 42, 157, 244),
                              borderRadius: BorderRadius.circular(9)),
                          child: Text(
                            'MySQL',
                            style: TextStyle(
                                color: Color.fromARGB(255, 42, 157, 244)),
                          )),
                    ],
                  );
                }
              })
            ],
          ),
        ),
      ),
      onTap: () async {
        final Uri URi = Uri.parse('github url');
        await launchUrl(URi);
      },
    );
  }
}

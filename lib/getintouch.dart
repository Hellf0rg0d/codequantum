import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

TextEditingController name = TextEditingController(text: '');
TextEditingController email = TextEditingController(text: '');
TextEditingController msg = TextEditingController(text: '');

class getintouch extends StatefulWidget {
  const getintouch({super.key});

  @override
  State<getintouch> createState() => _getintouch();
}

class _getintouch extends State<getintouch> {
  Future<void> insertmessage() async {
    try {
      if (name.text.isEmpty || email.text.isEmpty || msg.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Please Enter Vaild Details.'),
          ),
        );
      } else if (email.text.toString().contains('@') == false) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Please Enter Valid Email Address.'),
          ),
        );api
      } else {
         final response = await http.get(Uri.parse(
            'api'));

        if (response.statusCode == 200) {
          final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
          if (jsonResponse.containsKey('status')) {
            if (jsonResponse['status'] == false) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Network error, Try again'),
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Message Sent!'),
                ),
              );
            }
          } else {
            setState(() {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Network error, Try again'),
                ),
              );
            });
          }
        } else {
          setState(() {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Network error, Try again'),
              ),
            );
          });
        }
      }
    } catch (e) {
      log(e.toString());
    }
    // return false;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1345) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 10, 10, 10),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            //iconTheme: IconThemeData(color: Colors.white),
            surfaceTintColor: Colors.transparent,
            backgroundColor: const Color.fromARGB(255, 10, 10, 10),
            title: Column(
              children: [
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(width: 5),
                      GestureDetector(
                        child: Text(
                          'CODEQUANTUM.IN',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 42, 157, 244),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
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
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(
                  height: 10,
                  color: Color.fromARGB(60, 224, 224, 224),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
              child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Connect',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'For collaborations and inquiries',
                    style: TextStyle(
                        color: Color.fromARGB(130, 224, 224, 224),
                        fontSize: 16),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Email',
                    style: TextStyle(
                        color: Color.fromARGB(130, 224, 224, 224),
                        fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  SelectableText(
                    'email-id',
                    style: TextStyle(
                        color: Color.fromARGB(255, 42, 157, 244), fontSize: 18),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Socials',
                    style: TextStyle(
                        color: Color.fromARGB(130, 224, 224, 224),
                        fontSize: 16),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 10),
                      GestureDetector(
                          onTap: () async {
                            final Uri URi =
                                Uri.parse('github url');
                            await launchUrl(URi);
                          },
                          child: Text(
                            'Github',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )),
                      SizedBox(height: 10),
                      GestureDetector(
                          onTap: () async {
                            final Uri URi = Uri.parse(
                                'instagram url');
                            await launchUrl(URi);
                          },
                          child: Text(
                            'Instagram',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )),
                      SizedBox(height: 10),
                      GestureDetector(
                          onTap: () async {
                            //  final Uri URi =
                            //       Uri.parse('linkedin url');
                            //   await launchUrl(URi);
                          },
                          child: Text(
                            'LinkedIn',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )),
                      SizedBox(height: 10),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                        width: (MediaQuery.of(context).size.width - 16),
                        child: TextField(
                            controller: name,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                            cursorColor: Color.fromARGB(255, 42, 157, 244),
                            maxLines: 1,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 42, 157, 244))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(25, 255, 255, 255))),
                              focusColor: Color.fromARGB(25, 255, 255, 255),
                              labelText: 'Name',
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ))),
                    SizedBox(height: 15),
                    SizedBox(
                        width: (MediaQuery.of(context).size.width - 16),
                        child: TextField(
                            controller: email,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                            cursorColor: Color.fromARGB(255, 42, 157, 244),
                            maxLines: 1,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 42, 157, 244))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(25, 255, 255, 255))),
                              focusColor: Color.fromARGB(25, 255, 255, 255),
                              labelText: 'Email',
                              labelStyle:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ))),
                    SizedBox(height: 15),
                    SizedBox(
                        width: (MediaQuery.of(context).size.width - 16),
                        child: TextField(
                            controller: msg,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                            cursorColor: Color.fromARGB(255, 42, 157, 244),
                            minLines: 5,
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 42, 157, 244))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(25, 255, 255, 255))),
                              focusColor: Color.fromARGB(25, 255, 255, 255),
                              hintText: 'Message',
                              hintStyle:
                                  TextStyle(fontSize: 18, color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ))),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Spacer(),
                        ElevatedButton(
                          onPressed: () async {
                            await insertmessage();
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Container(
                                // min sizes for Material buttons
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 15),
                                  child: const Text(
                                    'Send Message',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 100),
                    const Divider(
                      height: 10,
                      color: Color.fromARGB(60, 224, 224, 224),
                    ),
                    Text(
                      '© 2025 Kartik Nhm. All rights reserved.',
                      style: TextStyle(
                          color: Color.fromARGB(130, 224, 224, 224),
                          fontSize: 17),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
              //   Spacer(),
            ],
          )),
        );
      } else {
        return Scaffold(
            backgroundColor: const Color.fromARGB(255, 10, 10, 10),
            appBar: AppBar(
              automaticallyImplyLeading: false,
              //iconTheme: IconThemeData(color: Colors.white),
              surfaceTintColor: Colors.transparent,
              backgroundColor: const Color.fromARGB(255, 10, 10, 10),
              title: Column(
                children: [
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        GestureDetector(
                          child: Text(
                            'CODEQUANTUM.IN',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 42, 157, 244),
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
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
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    height: 10,
                    color: Color.fromARGB(60, 224, 224, 224),
                  ),
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            'Connect',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 38),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'For collaborations and inquiries',
                            style: TextStyle(
                                color: Color.fromARGB(130, 224, 224, 224),
                                fontSize: 18),
                          ),
                          SizedBox(height: 35),
                          Text(
                            'Email',
                            style: TextStyle(
                                color: Color.fromARGB(130, 224, 224, 224),
                                fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          SelectableText(
                            'email id,
                            style: TextStyle(
                                color: Color.fromARGB(255, 42, 157, 244),
                                fontSize: 20),
                          ),
                          SizedBox(height: 35),
                          Text(
                            'Socials',
                            style: TextStyle(
                                color: Color.fromARGB(130, 224, 224, 224),
                                fontSize: 16),
                          ),
                          Row(
                            children: [
                              SizedBox(height: 35),
                              GestureDetector(
                                  onTap: () async {
                                    final Uri URi = Uri.parse(
                                        'github url');
                                    await launchUrl(URi);
                                  },
                                  child: Text(
                                    'Github',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )),
                              SizedBox(width: 10),
                              GestureDetector(
                                  onTap: () async {
                                    final Uri URi = Uri.parse(
                                        'instagram url');
                                    await launchUrl(URi);
                                  },
                                  child: Text(
                                    'Instagram',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )),
                              SizedBox(width: 10),
                              GestureDetector(
                                  onTap: () async {
                                    //  final Uri URi =
                                    //       Uri.parse('linkedin url');
                                    //   await launchUrl(URi);
                                  },
                                  child: Text(
                                    'LinkedIn',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )),
                              SizedBox(width: 10),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width - 64) / 3,
                              child: TextField(
                                  controller: name,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.start,
                                  cursorColor:
                                      Color.fromARGB(255, 42, 157, 244),
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 42, 157, 244))),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                25, 255, 255, 255))),
                                    focusColor:
                                        Color.fromARGB(25, 255, 255, 255),
                                    labelText: 'Name',
                                    labelStyle: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ))),
                          SizedBox(height: 25),
                          SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width - 64) / 3,
                              child: TextField(
                                  controller: email,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.start,
                                  cursorColor:
                                      Color.fromARGB(255, 42, 157, 244),
                                  maxLines: 1,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 42, 157, 244))),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                25, 255, 255, 255))),
                                    focusColor:
                                        Color.fromARGB(25, 255, 255, 255),
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ))),
                          SizedBox(height: 25),
                          SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width - 64) / 3,
                              child: TextField(
                                  controller: msg,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.start,
                                  cursorColor:
                                      Color.fromARGB(255, 42, 157, 244),
                                  minLines: 5,
                                  maxLines: null,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 42, 157, 244))),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                25, 255, 255, 255))),
                                    focusColor:
                                        Color.fromARGB(25, 255, 255, 255),
                                    hintText: 'Message',
                                    hintStyle: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ))),
                          SizedBox(height: 25),
                          ElevatedButton(
                            onPressed: () async {
                              await insertmessage();
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: Container(
                                  constraints: const BoxConstraints(
                                      minWidth: 88.0,
                                      minHeight:
                                          36.0), // min sizes for Material buttons
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 15),
                                    child: const Text(
                                      'Send Message',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(height: 100),
                  const Divider(
                    height: 10,
                    color: Color.fromARGB(60, 224, 224, 224),
                  ),
                  Text(
                    '© 2025 Kartik NHM. All rights reserved.',
                    style: TextStyle(
                        color: Color.fromARGB(130, 224, 224, 224),
                        fontSize: 17),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ));
      }
    });
  }
}

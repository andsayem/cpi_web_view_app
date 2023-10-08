import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class CpiPolytechnic extends StatefulWidget {
  const CpiPolytechnic({Key? key});

  @override
  State<CpiPolytechnic> createState() => _CpiPolytechnicState();
}

class _CpiPolytechnicState extends State<CpiPolytechnic> {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Could not launch URL'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final BoxDecoration buttonDecoration = BoxDecoration(
      color: Colors.amber,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 3),
          blurRadius: 6,
        ),
      ],
      borderRadius: BorderRadius.all(Radius.circular(8)),
    );

    final TextStyle buttonTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 20,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#f48000'),
        actionsIconTheme: const IconThemeData(color: Colors.white),
        title: const Text('CPI Polytechnic'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.asset(
              'assets/images/logo_cpi.png',
              // Make sure the asset path is correct
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => _launchURL('http://cpi.edu.bd/site/userlogin'),
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20),
                      decoration: buttonDecoration,
                      child: const Row(
                        children: [
                          Icon(
                            Icons
                                .person_3_outlined, // You can choose the icon you want here
                            color: Colors.black,
                            size: 24, // You can adjust the size as needed
                          ),
                          SizedBox(width: 8), // A
                          Text(
                            'Student Login',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight
                                  .bold, // Add fontWeight for emphasis
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => _launchURL('http://cpi.edu.bd/site/login'),
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20),
                      decoration: buttonDecoration,
                      child: const Row(
                        children: [
                          Icon(
                            Icons
                                .person_2_sharp, // You can choose the icon you want here
                            color: Colors.black,
                            size: 24, // You can adjust the size as needed
                          ),
                          SizedBox(width: 8), //
                          Text(
                            'Teacher Login',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight
                                  .bold, // Add fontWeight for emphasis
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

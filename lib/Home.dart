import 'package:cpi/CpiPolytechnic.dart';
import 'package:cpi/Hostel.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  _launchURL(base_url) async {
    final Uri url = Uri.parse(base_url);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch  ');
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#f48000'),
        title: const Text('CPI Polytechnic'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        centerTitle: true,
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CpiPolytechnic()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons
                                .cast_for_education, // You can choose the icon you want here
                            color: Colors.black,
                            size: 24, // You can adjust the size as needed
                          ),
                          SizedBox(width: 8), // A
                          Text(
                            'CPI Polytechnic',
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hostel()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons
                                .hotel, // You can choose the icon you want here
                            color: Colors.black,
                            size: 24, // You can adjust the size as needed
                          ),
                          SizedBox(width: 8), // A
                          Text(
                            'CPI Hostel',
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
                    onTap: () => _launchURL('http://cpi.edu.bd/site/userlogin'),
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: const Row(
                        // Use Row to add an icon and text side by side
                        children: [
                          Icon(
                            Icons.web, // You can choose the icon you want here
                            color: Colors.black,
                            size: 24, // You can adjust the size as needed
                          ),
                          SizedBox(
                              width:
                                  8), // Add some spacing between the icon and text
                          Text(
                            'CPI Web',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
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

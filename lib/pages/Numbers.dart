import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:inpo_last/localization/locales.dart';
import 'package:url_launcher/url_launcher.dart';

class Emergency extends StatefulWidget {
  const Emergency({super.key});

  @override
  State<Emergency> createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: new Color.fromARGB(250, 250, 250, 250),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            backgroundColor: new Color.fromARGB(250, 250, 250, 250),
            iconTheme: IconThemeData(
              color: Colors.black,
              size: 30.0,
            ),

            // automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
              child: Text(
                LocaleData.numberti.getString(context),
                style: TextStyle(
                  fontFamily: 'Readex Pro',
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                ),
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2,
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              GestureDetector(
                onTap: () async {
                  final Uri url = Uri(
                    scheme: 'tel',
                    path: "122",
                  );
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    print('Error');
                  }
                },
                child: Container(
                    margin: EdgeInsets.all(20),
                    width: 400,
                    height: 140,
                    decoration: BoxDecoration(
                      color: new Color.fromARGB(255, 127, 170, 244),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/img/ambulance.png',
                                  width: 150,
                                  height: 100,
                                ),
                              ),
                              Text(
                                LocaleData.num1.getString(context),
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 0),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                          child: Text('122',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 3,
                                fontSize: 30,
                                color: Colors.white,
                              )),
                        )
                      ],
                    )),
              ),
              GestureDetector(
                onTap: () async {
                  final Uri url = Uri(
                    scheme: 'tel',
                    path: "104",
                  );
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    print('Error');
                  }
                },
                child: Container(
                    margin: EdgeInsets.all(20),
                    width: 400,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 126, 182, 120),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(23, 0, 0, 0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/img/police.png',
                                  width: 150,
                                  height: 100,
                                ),
                              ),
                              Text(
                                LocaleData.num2.getString(context),
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 0),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                          child: Text('104',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 3,
                                fontSize: 30,
                                color: Colors.white,
                              )),
                        )
                      ],
                    )),
              ),
              GestureDetector(
                onTap: () async {
                  final Uri url = Uri(
                    scheme: 'tel',
                    path: "115",
                  );
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    print('Error');
                  }
                },
                child: Container(
                    margin: EdgeInsets.all(20),
                    width: 400,
                    height: 140,
                    decoration: BoxDecoration(
                      color: new Color.fromARGB(255, 237, 159, 90),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/img/fire-truck.png',
                                  width: 150,
                                  height: 100,
                                ),
                              ),
                              Text(
                                LocaleData.num3.getString(context),
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 0),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                          child: Text('115',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 3,
                                fontSize: 30,
                                color: Colors.white,
                              )),
                        )
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}

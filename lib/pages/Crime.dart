import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:inpo_last/localization/locales.dart';

class Crime extends StatelessWidget {
  const Crime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.black,
              size: 30.0,
            ),

            // automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
              child: Text(
                LocaleData.dra1.getString(context),
                style: TextStyle(
                  fontFamily: 'Readex Pro',
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Robbery');
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/img/robbery.png',
                                    width: 100,
                                    height: 80,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                              child: Text(
                                LocaleData.crim1.getString(context),
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 0),
                              ))
                        ],
                      )),
                ),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Coming');
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
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/img/abduction.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                LocaleData.crim2.getString(context),
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 0),
                              ))
                        ],
                      )),
                ),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Coming');
                  },
                  child: Container(
                      margin: EdgeInsets.all(20),
                      width: 400,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(220, 233, 152, 80),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/img/hacker.png',
                                    width: 100,
                                    height: 90,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                LocaleData.crim3.getString(context),
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 0),
                              ))
                        ],
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}
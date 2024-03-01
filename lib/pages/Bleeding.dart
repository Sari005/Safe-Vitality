import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:inpo_last/localization/locales.dart';

class Bleeding extends StatefulWidget {
  const Bleeding({super.key});

  @override
  State<Bleeding> createState() => _BleedingState();
}

class _BleedingState extends State<Bleeding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // automaticallyImplyLeading: false,
        title: Text(
          LocaleData.bleti.getString(context),
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.normal,
          ),
        ),

        iconTheme: IconThemeData(color: Colors.black),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pushNamed(context, '/Nosebleed');
                    },
                    child: Container(
                      width: 100,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Color(0xFF6C48F9),
                        borderRadius: BorderRadius.circular(30),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(mainAxisSize: MainAxisSize.max, children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Text(
                            LocaleData.ble1.getString(context),
                            style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                        // SizedBox(width: 80,),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/img/nose-bleeding.png',
                                  width: 80,
                                  height: 90,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Coming');
                    },
                    child: Container(
                      width: 100,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Color(0xFFF678B9),
                        borderRadius: BorderRadius.circular(30),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(mainAxisSize: MainAxisSize.max, children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Text(
                            LocaleData.ble2.getString(context),
                            style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                        // SizedBox(width: 70,),
                        Align(
                          alignment: AlignmentDirectional(1.00, 0.00),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 3, 0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/img/mouth.png',
                                  width: 80,
                                  height: 90,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 20, 30, 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Coming');
                    },
                    child: Container(
                      width: 100,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Color(0xFFF9E0A0),
                        borderRadius: BorderRadius.circular(30),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(mainAxisSize: MainAxisSize.max, children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                          child: Text(
                            LocaleData.ble3.getString(context),
                            style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                        // SizedBox(width: 68,),
                        Align(
                          alignment: AlignmentDirectional(1.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/img/intestine.png',
                                width: 80,
                                height: 90,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      //   floatingActionButton: FloatingActionButton(onPressed: () {
      //   Navigator.pushNamed(context, '/');
      // },
      //  child: Icon(Icons.home))
    );
  }
}

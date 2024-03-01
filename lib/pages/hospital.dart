import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:inpo_last/localization/locales.dart';
import 'package:url_launcher/url_launcher.dart';

class Hospitals extends StatelessWidget {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) ;
    {
      throw "can not launch url";
    }
  }

  const Hospitals({super.key});

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
                LocaleData.locti.getString(context),
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
              Container(
                child: GestureDetector(
                  onTap: () {
                    _launchURL('youtu.be');
                  },
                  child: Container(
                      margin: EdgeInsets.all(20),
                      width: 400,
                      height: 140,
                      decoration: BoxDecoration(
                        color: new Color.fromARGB(255, 127, 170, 244),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            LocaleData.loc1.getString(context),
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 0),
                          )
                        ],
                      )),
                ),
              ),
              Container(
                child: Container(
                    margin: EdgeInsets.all(20),
                    width: 400,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 126, 182, 120),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          LocaleData.loc3.getString(context),
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 0),
                        )
                      ],
                    )),
              ),
              Container(
                child: Container(
                    margin: EdgeInsets.all(20),
                    width: 400,
                    height: 140,
                    decoration: BoxDecoration(
                      color: new Color.fromARGB(255, 237, 159, 90),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              LocaleData.loc2.getString(context),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 0),
                            ),
                          )
                        ],
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:inpo_last/localization/locales.dart';

class Apple extends StatelessWidget {
  const Apple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.secondary,
          ),

          backgroundColor: Theme.of(context).colorScheme.primary,
          // automaticallyImplyLeading: false,
          title: Text(
            LocaleData.apple1.getString(context),
            style: TextStyle(
              fontFamily: 'Outfit',
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 22,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      // mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(14, 17, 0, 35),
                          child: Text(
                            LocaleData.apple2.getString(context),
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontFamily: 'Readex Pro',
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

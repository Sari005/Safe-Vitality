import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:inpo_last/localization/locales.dart';

class Robbery extends StatefulWidget {
  const Robbery({super.key});

  @override
  State<Robbery> createState() => _RobberyState();
}

class _RobberyState extends State<Robbery> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.secondary,
          ),

          backgroundColor: Theme.of(context).colorScheme.primary,
          // automaticallyImplyLeading: false,
          title: Text(
            LocaleData.crim1.getString(context),
            style: TextStyle(
              fontFamily: 'Readex Pro',
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 22,
              letterSpacing: 2,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
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
                            LocaleData.crim4.getString(context),
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

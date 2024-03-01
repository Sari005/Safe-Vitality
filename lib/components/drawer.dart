import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:inpo_last/localization/locales.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer>
    with SingleTickerProviderStateMixin {
  //controller
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  bool darkmoded = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: 318,
        height: 190,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x33000000),
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(14, 0, 0, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/Theme');
                        },
                        child: Container(
                          width: 52, // Adjust the width as needed
                          height: 52, // Adjust the height as needed
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.home,
                            color: Theme.of(context).colorScheme.primary,
                            size: 23,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Text(
                      LocaleData.title.getString(context),
                      style: TextStyle(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.00, 0.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 25, 0, 10),
                child: RichText(
                  textScaleFactor: MediaQuery.of(context).textScaleFactor,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Discover\n',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 22,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextSpan(
                        text:
                            '\n-Medical Conditions\n-Natural Disasters\n-Work out',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Readex Pro',
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      )
                    ],
                    style: TextStyle(),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Divider(
              thickness: 2,
              // indent: 10,
              // endIndent: 10,
              color: Theme.of(context).colorScheme.secondary,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: GestureDetector(
                onTap: () => {Navigator.pushNamed(context, '/Crime')},
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(14, 0, 0, 5),
                        child: InkWell(
                          onTap: () => {Navigator.pushNamed(context, '/Crime')},
                          child: Container(
                              width: 52,
                              height: 52,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 10,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'assets/img/spyware.png',
                                width: 20,
                                height: 30,
                                // color: Theme.of(context).colorScheme.primary,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                      child: Text(
                        LocaleData.dra1.getString(context),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 2,
              // indent: 10,
              // endIndent: 10,
              color: Theme.of(context).colorScheme.secondary,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: GestureDetector(
                onTap: () => {Navigator.pushNamed(context, '/Workout')},
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(14, 0, 0, 5),
                        child: InkWell(
                          onTap: () =>
                              {Navigator.pushNamed(context, '/Workout')},
                          child: Container(
                              width: 52,
                              height: 52,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 10,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'assets/img/excercise.png',
                                width: 20,
                                height: 30,
                                // color: Theme.of(context).colorScheme.primary,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                      child: Text(
                        LocaleData.dra2.getString(context),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 2,
              // indent: 10,
              // endIndent: 10,
              color: Theme.of(context).colorScheme.secondary,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: GestureDetector(
                onTap: () => {Navigator.pushNamed(context, '/Diets')},
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(14, 0, 0, 0),
                        child: InkWell(
                          onTap: () => {Navigator.pushNamed(context, '/Diets')},
                          child: Container(
                              width: 52,
                              height: 52,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 10,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'assets/img/vegetables.png',
                                width: 20,
                                height: 30,
                                // color: Theme.of(context).colorScheme.primary,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                      child: Text(
                        LocaleData.dra3.getString(context),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 2,
              // indent: 10,
              // endIndent: 10,
              color: Theme.of(context).colorScheme.secondary,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 2)),
                  child: GestureDetector(
                      onTap: () {
                        AwesomeNotifications().createNotification(
                          content: NotificationContent(
                              id: 1,
                              channelKey: "basic_channel",
                              title: "Remember!",
                              body: "Yay! Remember to drink water!"),
                        );
                      },
                      child: Icon(
                        Icons.notification_add,
                        color: Theme.of(context).colorScheme.secondary,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

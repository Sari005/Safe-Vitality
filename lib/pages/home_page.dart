import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:inpo_last/components/carousal.dart';
import 'package:inpo_last/components/drawer.dart';
import 'package:inpo_last/components/row_of_dis.dart';
import 'package:inpo_last/components/row_of_med.dart';
import 'package:inpo_last/localization/locales.dart';
// import 'package:inpo_last/theme/theme_provider.dart';
// import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FlutterLocalization _flutterLocalization;

  late String _currentLocale;
  @override
  void initState() {
    super.initState();
    _flutterLocalization = FlutterLocalization.instance;
    _currentLocale = _flutterLocalization.currentLocale!.languageCode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            iconTheme: IconThemeData(
              color: Theme.of(context).colorScheme.secondary,
            ),

            backgroundColor: Theme.of(context).colorScheme.primary,
            // automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
              child: Text(
                LocaleData.title.getString(context),
                style: TextStyle(
                  fontFamily: 'Outfit',
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 22,
                ),
              ),
            ),
            actions: [
              // Text('Signed In as: '+ user.email!),
              // Padding(
              //   padding: const EdgeInsets.only(right: 15.0),
              //   child: GestureDetector(
              //       onTap: () {
              //         AwesomeNotifications().createNotification(
              //           content: NotificationContent(
              //               id: 1,
              //               channelKey: "basic_channel",
              //               title: "Remember!",
              //               body: "Yay! Remember to drink water!"),
              //         );
              //       },
              //       child: Icon(
              //         Icons.notification_add,
              //         color: Theme.of(context).colorScheme.secondary,
              //       )),
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 5),
                child: DropdownButton(
                  elevation: 0,
                  iconSize: 25,
                  borderRadius: BorderRadius.circular(25),
                  dropdownColor: Theme.of(context).colorScheme.background,
                  iconEnabledColor: Theme.of(context).colorScheme.secondary,
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                  value: _currentLocale,
                  items: const [
                    DropdownMenuItem(
                      value: "en",
                      child: Text(
                        "English",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    DropdownMenuItem(
                      value: "ckb",
                      child: Text(
                        "Kurdish",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    _setLocale(value);
                  },
                ),
              )
            ],
            centerTitle: true,
            elevation: 0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                MyCarousel(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(50)),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Emergency');
                          },
                          icon: Icon(
                            Icons.phone,
                            color: Theme.of(context).colorScheme.tertiary,
                            size: 20,
                          )),
                    ),
                    Container(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/Hospitals');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 10),
                              borderRadius: BorderRadius.circular(50),
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            child: Image.asset(
                              'assets/img/hospital(1).png',
                              color: Theme.of(context).colorScheme.tertiary,
                              width: 30,
                              height: 30,
                            ),
                          )),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          // border: Border.all(
                          //     color: Theme.of(context).colorScheme.secondary),
                          borderRadius: BorderRadius.circular(50)),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/Fruits');
                          },
                          child: Image.asset(
                            'assets/img/grocery.png',
                            color: Theme.of(context).colorScheme.tertiary,
                            width: 40,
                          )),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(50)),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Awareness');
                          },
                          icon: Icon(
                            Icons.medical_information_outlined,
                            color: Theme.of(context).colorScheme.tertiary,
                            size: 25,
                          )),
                    ),
                  ],
                ),
                RowOfMed(),
                RowOfDis(),
// ends here
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                //   child: Container(
                //     decoration: BoxDecoration(
                //         color: Theme.of(context).colorScheme.primary,
                //         borderRadius: BorderRadius.circular(25)),
                //     width: 330,
                //     height: 120,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(left: 20),
                //           child: Image.asset(
                //             'assets/img/spyware.png',
                //             width: 70,
                //             height: 70,
                //           ),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(right: 30),
                //           child: Text(
                //             'Criminal activity',
                //             style: TextStyle(
                //                 fontSize: 20,
                //                 color: Theme.of(context).colorScheme.secondary),
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        drawer: MyDrawer());
  }

  void _setLocale(String? value) {
    if (value == null) return;
    if (value == "en") {
      _flutterLocalization.translate("en");
    } else if (value == "ckb") {
      _flutterLocalization.translate("ckb");
    } else {
      return;
    }
    setState(() {
      _currentLocale = value;
    });
  }
}

// body: Center(

//       ),

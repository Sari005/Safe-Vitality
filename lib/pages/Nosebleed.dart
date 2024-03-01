// import 'package:fire/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:inpo_last/localization/locales.dart';

class Nosebleed extends StatefulWidget {
  const Nosebleed({super.key});

  @override
  State<Nosebleed> createState() => _NosebleedState();
}

class _NosebleedState extends State<Nosebleed>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize TabController with the length of tabs (3 in this case)
    _tabController = TabController(length: 4, vsync: this);
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
          LocaleData.bleti.getString(context),
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
      // drawer: MyDrawer(),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(0, 0),
                    child: TabBar(
                      controller: _tabController, // Assign the TabController
                      labelColor: Theme.of(context).colorScheme.tertiary,
                      unselectedLabelColor:
                          Theme.of(context).colorScheme.secondary,
                      labelStyle: Theme.of(context).textTheme.headline6,
                      unselectedLabelStyle: TextStyle(),
                      indicatorColor: Theme.of(context).colorScheme.tertiary,
                      padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),

                      tabs: [
                        Tab(
                          child: Text(
                            LocaleData.bleti.getString(context),
                            style: TextStyle(
                                fontSize: 14), // Adjust the fontSize as needed
                          ),
                        ),
                        Tab(
                          child: Text(
                            LocaleData.ble4.getString(context),
                            style: TextStyle(
                                fontSize: 14), // Adjust the fontSize as needed
                          ),
                        ),
                        Tab(
                          child: Text(
                            "First Aid",
                            style: TextStyle(
                                fontSize: 14), // Adjust the fontSize as needed
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Video',
                            style: TextStyle(
                                fontSize: 14), // Adjust the fontSize as needed
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController, // Assign the TabController
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    14, 17, 0, 35),
                                child: Text(
                                  LocaleData.ble5.getString(context),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'Readex Pro',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/img/nostril.png',
                                  width: 283,
                                  height: 465,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    14, 14, 0, 0),
                                child: Text(
                                  LocaleData.ble6.getString(context),
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'Readex Pro',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(14, 14, 0, 0),
                            child: Text(
                              '1. Stay calm: Though nosebleeds can be alarming, staying calm helps manage the situation better.\n\n2. Sit up straight: Keep your head elevated to reduce blood flow to the nose.\n\n3. Lean forward slightly: Leaning forward prevents blood from flowing down the back of your throat, which can cause nausea.\n\n4. Pinch your nostrils: Using your thumb and forefinger, pinch your nostrils together and breathe through your mouth. This helps apply pressure to the bleeding vessels.\n\n5. Apply ice: Placing a cold pack or ice wrapped in a cloth on the bridge of your nose can help constrict blood vessels and reduce bleeding.\n\n6.Avoid tilting your head back: This was a common practice in the past, but it\'s now discouraged as it can lead to blood flowing down the back of your throat.\n\n7. Use a saline nasal spray: If dry air is a contributing factor, consider using a saline nasal spray to keep the nasal passages moist.\n\n8.Avoid nose picking: Refrain from picking your nose, as this can exacerbate the issue.',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 17,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(14, 14, 0, 0),
                              child: GestureDetector(onTap: () {
                                Navigator.pushNamed(context, '/VideoBleeding');
                              })),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

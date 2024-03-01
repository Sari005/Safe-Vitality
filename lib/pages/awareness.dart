import 'package:flutter/material.dart';

class Awareness extends StatefulWidget {
  const Awareness({super.key});

  @override
  State<Awareness> createState() => _AwarenessState();
}

class _AwarenessState extends State<Awareness>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize TabController with the length of tabs (3 in this case)
    _tabController = TabController(length: 3, vsync: this);
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
          'DRABC Procedure Guide',
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
                            'DRABC',
                            style: TextStyle(
                                fontSize: 15), // Adjust the fontSize as needed
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Procedure',
                            style: TextStyle(
                                fontSize: 15), // Adjust the fontSize as needed
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Video',
                            style: TextStyle(
                                fontSize: 16), // Adjust the fontSize as needed
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
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'DRABC Procedure Guide\n The Primary Survey',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'Readex Pro',
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    14, 17, 0, 35),
                                child: Text(
                                  'When a first aider initially arrives at the scene of an incident, the worst thing they can do for everyone involved is to rush straight in. That is not to say that fast action isn’t essential. First, the responder must assess the situation in front of them. This assessment is known as the Primary Survey.Of course, to protect their safety, and best help their patients, it is essential that first aiders know about each stage of the survey. Happily, the acronym DRABC or DR ABC, as it is also known, can help here, a topic which you can read more about below.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'Readex Pro',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  'What does DRABC stand for?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'Readex Pro',
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 20, 10, 35),
                                child: Text(
                                  'DRABC is the acronym for the steps in the primary survey procedure that every first aider must complete when they initially come across a casualty. DRABC stands for Danger, Response, Airway, Breathing and Circulation. Although, there is some debate as to whether this is enough steps in some cases. An issue we will get into more detail about later on.',
                                  textAlign: TextAlign.start,
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
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  'What is the DRABC procedure?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'Readex Pro',
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 20),
                                    child: Text(
                                      'Step one: Danger',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 20, 10, 35),
                                child: Text(
                                  'Before anything else, it is vital that a first aider assess the overall danger of the situation, and whether it is safe for them or any other person to be in it. After all, a first responder cannot help a casualty if they become injured. Not doing a danger assessment could even mean risking their own life and putting additional strain on the emergency service once they arrive. Something that can interfere with the treatment the casualty receives.\nFor example: If a casualty is in an accident in a vehicle on the motorway, the primary danger here would be other traffic. Therefore, the traffic would need to be stopped before attending to the casualty. Only after you have confirmed that there is no danger can you approach and assess the casualty.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'Readex Pro',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 20),
                                    child: Text(
                                      'Step 2: Response',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 20, 10, 35),
                                child: Text(
                                  'The second step isn’t about the first aiders response, but about whether the casualty can respond and provide information about their condition.It is a very valuable stage, as even no-response will inform the first aider about the seriousness of their casualty’s condition.To help you properly conduct step 2, use the mnemonic AVPU:\n\nAlert: Check to see if the casualty is alert and conscious. Are they talking or moving? If the answer is no, progress to the V stage below.\nVoice: Speak to the casualty in a loud voice. Be sure to be in their eye line when you do this. If the casualty does not respond, progress to stage P below.\nPlace: Shake the casualty firmly by placing your hands on their collarbone. Continue to speak to them while you do this, letting them know you are a first aider trying to help them. If you get no response, continue to stage U.\nUnresponsive: Once you have completed the steps above with no response, you can class the casualty as unresponsive. Then you can proceed through the ABC steps as outlined below.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'Readex Pro',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 20),
                                    child: Text(
                                      'Step 3: Airways',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 20, 10, 35),
                                child: Text(
                                  'Once you have established that their casualty is unresponsive, you must check their airway. The airway is a critical step because, at this point, you will be looking to find out why the casualty is unresponsive.\nTo check your casualty’s airway, place them on their back, and use two fingers placed on their forehead and two on the chin to tip their head back gently. Use your fingertips on their chin to lift their mouth and open their airways.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'Readex Pro',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 20),
                                    child: Text(
                                      'Step 4: Breathing',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 20, 10, 35),
                                child: Text(
                                  'Now you have opened your casualty’s airway, spend 10 seconds checking for signs of normal breathing. If they are not breathing, breathing infrequently, or abnormally you can go to step 5.\nIf the casualty is unconscious, but breathing normally, put them in the recovery position (when it is safe to do so).',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'Readex Pro',
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 20),
                                    child: Text(
                                      'Step 5: Call 122 / Circulation',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 20, 10, 35),
                                child: Text(
                                  'If your casualty is not breathing, it’s time to call 122. Do not start CPR until you have called 122. Your casualty will have a better chance of survival if the emergency services can get to them quickly. Use your speakerphone to make the call if you are on your own. Also, instruct those around you to fetch an AEB while you administer CPR.',
                                  textAlign: TextAlign.start,
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
                        SingleChildScrollView(child: GestureDetector(onTap: () {
                          Navigator.pushNamed(context, '/Video');
                        })),
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
    // Scaffold(
    //     backgroundColor: Theme.of(context).colorScheme.background,
    //     appBar: AppBar(
    //       iconTheme: IconThemeData(
    //         color: Theme.of(context).colorScheme.secondary,
    //       ),

    //       backgroundColor: Theme.of(context).colorScheme.primary,
    //       // automaticallyImplyLeading: false,
    //       title: Text(
    //         'DRABC Procedure Guide',
    //         style: TextStyle(
    //           fontFamily: 'Outfit',
    //           color: Theme.of(context).colorScheme.secondary,
    //           fontSize: 22,
    //         ),
    //       ),
    //       actions: [],
    //       centerTitle: false,
    //       elevation: 0,
    //     ),
    //     body: SafeArea(
    //       top: true,
    //       child: SingleChildScrollView(
    //         child: Container(
    //           child: Column(
    //             mainAxisSize: MainAxisSize.max,
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: [
    //               Align(
    //                 alignment: Alignment(0, 0),
    //                 child: TabBar(
    //                   controller: _tabController, // Assign the TabController
    //                   labelColor: Theme.of(context).colorScheme.tertiary,
    //                   unselectedLabelColor:
    //                       Theme.of(context).colorScheme.secondary,
    //                   labelStyle: Theme.of(context).textTheme.headline6,
    //                   unselectedLabelStyle: TextStyle(),
    //                   indicatorColor: Theme.of(context).colorScheme.tertiary,
    //                   padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),

    //                   tabs: [
    //                     Tab(
    //                       child: Text(
    //                         'DRACBC',
    //                         style: TextStyle(
    //                             fontSize: 15), // Adjust the fontSize as needed
    //                       ),
    //                     ),
    //                     Tab(
    //                       child: Text(
    //                         'Causes',
    //                         style: TextStyle(
    //                             fontSize: 15), // Adjust the fontSize as needed
    //                       ),
    //                     ),
    //                     Tab(
    //                       child: Text(
    //                         'First Aid',
    //                         style: TextStyle(
    //                             fontSize: 16), // Adjust the fontSize as needed
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               Container(
    //                 child: Column(
    //                   // mainAxisSize: MainAxisSize.max,
    //                   children: [
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: [
    //                         Padding(
    //                           padding: const EdgeInsets.only(top: 15),
    //                           child: Text(
    //                             'DRABC Procedure Guide\n The Primary Survey',
    //                             textAlign: TextAlign.center,
    //                             style: TextStyle(
    //                               color:
    //                                   Theme.of(context).colorScheme.secondary,
    //                               fontFamily: 'Readex Pro',
    //                               fontSize: 25,
    //                             ),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                     Padding(
    //                       padding:
    //                           EdgeInsetsDirectional.fromSTEB(10, 20, 10, 35),
    //                       child: Text(
    //                         'When a first aider initially arrives at the scene of an incident, the worst thing they can do for everyone involved is to rush straight in. That is not to say that fast action isn’t essential. First, the responder must assess the situation in front of them. This assessment is known as the Primary Survey.Of course, to protect their safety, and best help their patients, it is essential that first aiders know about each stage of the survey. Happily, the acronym DRABC or DR ABC, as it is also known, can help here, a topic which you can read more about below.',
    //                         textAlign: TextAlign.start,
    //                         style: TextStyle(
    //                           color: Theme.of(context).colorScheme.secondary,
    //                           fontFamily: 'Readex Pro',
    //                           fontSize: 17,
    //                         ),
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.only(top: 15),
    //                       child: Text(
    //                         'What does DRABC stand for?',
    //                         textAlign: TextAlign.center,
    //                         style: TextStyle(
    //                           color: Theme.of(context).colorScheme.secondary,
    //                           fontFamily: 'Readex Pro',
    //                           fontSize: 25,
    //                         ),
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding:
    //                           EdgeInsetsDirectional.fromSTEB(10, 20, 10, 35),
    //                       child: Text(
    //                         'DRABC is the acronym for the steps in the primary survey procedure that every first aider must complete when they initially come across a casualty. DRABC stands for Danger, Response, Airway, Breathing and Circulation. Although, there is some debate as to whether this is enough steps in some cases. An issue we will get into more detail about later on.',
    //                         textAlign: TextAlign.start,
    //                         style: TextStyle(
    //                           color: Theme.of(context).colorScheme.secondary,
    //                           fontFamily: 'Readex Pro',
    //                           fontSize: 17,
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //     ));
  }
}

import 'package:flutter/material.dart';

class HeartAttack extends StatefulWidget {
  const HeartAttack({super.key});

  @override
  State<HeartAttack> createState() => _HeartAttackState();
}

class _HeartAttackState extends State<HeartAttack>
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
          'Heart Attack',
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
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
                            'Heart Attack',
                            style: TextStyle(
                                fontSize: 15), // Adjust the fontSize as needed
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Causes',
                            style: TextStyle(
                                fontSize: 15), // Adjust the fontSize as needed
                          ),
                        ),
                        Tab(
                          child: Text(
                            'First Aid',
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
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    14, 17, 0, 35),
                                child: Text(
                                  'A heart attack, or myocardial infarction, occurs when the blood supply to a part of the heart muscle is blocked, usually by a blood clot. The lack of blood flow can cause damage or destruction of part of the heart muscle. Here are common causes and first aid measures for a heart attack:',
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
                                  'assets/img/heart-attack.png',
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
                              Text(
                                "Causes of a Heart Attack:",
                                style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily: 'Readex Pro',
                                  fontSize: 27,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    14, 14, 0, 0),
                                child: Text(
                                  '\n1. Coronary Artery Disease (CAD): The most common cause is atherosclerosis, a buildup of fatty deposits (plaque) in the coronary arteries that supply blood to the heart muscle.\n\n2. Blood Clot: A blood clot can form and block a coronary artery, cutting off blood flow to the heart.\n\n3. Coronary Spasm: Sudden, temporary tightening or narrowing of the coronary arteries.\n\n4. Drug Use: Certain drugs, especially stimulants like cocaine, can contribute to heart attacks.\n\n5. Smoking: Tobacco smoke contains chemicals that can damage blood vessels and heart tissue.\n\n6. High Blood Pressure: Chronic hypertension can weaken and damage the coronary arteries over time.\n\n7. Diabetes: Uncontrolled diabetes increases the risk of atherosclerosis and heart disease.\n\n8. Family History: A family history of heart disease can increase the risk.\n\n9. Age and Gender: Aging and being male are risk factors, though women also face an increased risk, especially after menopause.',
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
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "First Aid for a Suspected Heart Attack:",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    14, 14, 0, 0),
                                child: Text(
                                  '1. Call for Emergency Help: Dial the emergency services number immediately (e.g., 122 in Iraq).\n\n2. Stay with the Person: Do not leave the person alone. Keep them calm and encourage them to rest while waiting for help.\n\n3. Chew Aspirin (if available and not allergic): If the person is conscious and not allergic to aspirin, have them chew an aspirin (usually 325 mg) to help reduce the workload on the heart.\n\n4. Perform CPR if Necessary: If the person becomes unconscious and stops breathing, begin CPR if you are trained. Chest compressions can help maintain blood flow.\n\n5. Use an Automated External Defibrillator (AED) if Available: If an AED is nearby, follow the device\'s instructions for use..',
                                  style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 17,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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

import 'package:flutter/material.dart';
import 'invitationPage.dart';
import 'main.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int currentIndex = 0;
  bool factoryIndex = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 30),
      body: Column(
        children: [
          // ----------------- 'Factory 1/2' text -----------------
          Center(
            child: factoryIndex
                ? Text(
                    'Factory 1',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : Text(
                    'Factory 2',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),

          SizedBox(height: 20),
          // ----------------------------------------------------

          Expanded(
            child: SizedBox(
              width: double.infinity,

              // ------------ Background ------------
              child: Container(
                padding: EdgeInsets.all(20),
                color: customBrown,

                // ------------ Main Content ------------
                child: Column(
                  children: [
                    // ------------ Top Widget ------------
                    Column(
                      children: [
                        // ------------ Index 0 - Engineer list page ------------
                        if (currentIndex == 0) ...[
                          Container(
                            padding: EdgeInsets.all(15),
                            height: 460,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.15), // Shadow color
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                // ------------ Ben ------------
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(20),
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: customBeige,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: SizedBox(
                                        height: 50,
                                        width: 280,
                                        child: Text(
                                          'Ben \n +60109219938',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // ------------ Testing 1 ------------
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(20),
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: customBeige,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: SizedBox(
                                        height: 50,
                                        width: 280,
                                        child: Text(
                                          'Testing 1 \n +601234567891',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // ------------ Hello ------------
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(20),
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: customBeige,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: SizedBox(
                                        height: 50,
                                        width: 280,
                                        child: Text(
                                          'Hello \n +60123456789',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 50),

                                // ------------ + button ------------
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        // Go to next page
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                invitationPage(),
                                          ),
                                        );
                                      },
                                      tooltip: 'Invite',
                                      backgroundColor: customPink,
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],

                        // ------------ Index 1 - Dashboard page ------------
                        if (currentIndex == 1) ...[
                          // ------------ Gauges/Graphs ------------
                          Container(
                              padding: EdgeInsets.all(15),
                              height: 460,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black
                                        .withOpacity(0.15), // Shadow color
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  factoryIndex
                                      ? Column(
                                          children: [
                                            // ------------ Dashboard for factory 1 ------------
                                            Center(
                                              child: Text(
                                                '⚠️ ABD1234 IS UNREACHABLE! ⚠️',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            SizedBox(height: 20),

                                            // ------------ Steam pressure & flow gauges ------------
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                // ------------ Steam Pressure ------------
                                                Container(
                                                  padding: EdgeInsets.all(5),
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    color: customPink,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: SizedBox(
                                                    height: 150,
                                                    width: 150,
                                                    child: Image.asset(
                                                      'images/Lab 5/F1SteamPressure.png',
                                                    ),
                                                  ),
                                                ),

                                                // ------------ Steam Flow ------------
                                                Container(
                                                  padding: EdgeInsets.all(5),
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    color: customPink,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: SizedBox(
                                                    height: 150,
                                                    width: 150,
                                                    child: Image.asset(
                                                      'images/Lab 5/F1SteamFlow.png',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            // ------------ Water level & power frequency ------------
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                // ------------ Water level ------------
                                                Container(
                                                  padding: EdgeInsets.all(5),
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    color: customPink,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: SizedBox(
                                                    height: 150,
                                                    width: 150,
                                                    child: Image.asset(
                                                      'images/Lab 5/F1WaterLevel.png',
                                                    ),
                                                  ),
                                                ),

                                                // ------------ Power frequency ------------
                                                Container(
                                                  padding: EdgeInsets.all(5),
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    color: customPink,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: SizedBox(
                                                    height: 150,
                                                    width: 150,
                                                    child: Image.asset(
                                                      'images/Lab 5/F1PowerFrequency.png',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            SizedBox(height: 20),
                                            Center(child: Text('--:--')),
                                          ],
                                        )
                                      : Column(
                                          children: [
                                            // ------------ Dashboard for factory 2 ------------
                                            Center(
                                              child: Text(
                                                '⚠️ ABD1234 IS UNREACHABLE! ⚠️',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            SizedBox(height: 20),

                                            // ------------ Steam pressure & flow ------------
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                // ------------ Steam Pressure ------------
                                                Container(
                                                  padding: EdgeInsets.all(5),
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    color: customPink,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: SizedBox(
                                                    height: 150,
                                                    width: 150,
                                                    child: Image.asset(
                                                        'images/Lab 5/F2SteamPressure.png'),
                                                  ),
                                                ),

                                                // ------------ Steam Flow ------------
                                                Container(
                                                  padding: EdgeInsets.all(5),
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    color: customPink,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: SizedBox(
                                                    height: 150,
                                                    width: 150,
                                                    child: Image.asset(
                                                        'images/Lab 5/F2SteamFlow.png'),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            // ------------ Water level & power frequency ------------
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                // ------------ Water level ------------
                                                Container(
                                                  padding: EdgeInsets.all(5),
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    color: customPink,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: SizedBox(
                                                    height: 150,
                                                    width: 150,
                                                    child: Image.asset(
                                                        'images/Lab 5/F2WaterLevel.png'),
                                                  ),
                                                ),

                                                // ------------ Power frequency ------------
                                                Container(
                                                  padding: EdgeInsets.all(5),
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                    color: customPink,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: SizedBox(
                                                    height: 150,
                                                    width: 150,
                                                    child: Image.asset(
                                                        'images/Lab 5/F2PowerFrequency.png'),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            SizedBox(height: 20),
                                            Center(child: Text('--:--')),
                                          ],
                                        ),
                                ],
                              )),
                        ],

                        // ------------ Index 2 - Notification settings page ------------
                        if (currentIndex == 2) ...[
                          // Settings
                          Container(
                            padding: EdgeInsets.all(15),
                            height: 460,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.15), // Shadow color
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    // ------------ Dashboard for factory 2 ------------
                                    Row(
                                      children: [
                                        Text(
                                          'Minimum Threshold',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Icon(Icons.info_outline),
                                      ],
                                    ),
                                    SizedBox(height: 20),

                                    // ------------ Steam pressure & flow ------------
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // ------------ Steam Pressure ------------
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          margin: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: customBeige,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: Image.asset(
                                                'images/Lab 5/SteamPThreshold.png'),
                                          ),
                                        ),

                                        // ------------ Steam Flow ------------
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          margin: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: customBeige,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: Image.asset(
                                                'images/Lab 5/SteamFThreshold.png'),
                                          ),
                                        ),
                                      ],
                                    ),

                                    // ------------ Water level & power frequency ------------
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // ------------ Water level ------------
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          margin: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: customBeige,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: Image.asset(
                                                'images/Lab 5/WaterThreshold.png'),
                                          ),
                                        ),

                                        // ------------ Power frequency ------------
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          margin: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: customBeige,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: Image.asset(
                                                'images/Lab 5/PowerThreshold.png'),
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 20),
                                    Center(child: Text('--:--')),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ),

                    SizedBox(height: 20),

                    // ----------------- Factory 1 & 2 Widgets -----------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // ------------ Factory 1 ------------
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              factoryIndex = true;
                            });
                          },
                          child: Container(
                            height: 150,
                            width: 170,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.15), // Shadow color
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.factory,
                                  color: Colors.black,
                                  size: 50,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Factory 1',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(width: 20),

                        // ------------ Factory 2 ------------
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              factoryIndex = false;
                            });
                          },
                          child: Container(
                            height: 150,
                            width: 170,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.factory,
                                  color: Colors.black,
                                  size: 50,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Factory 2',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],

        // To change the index on tap
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

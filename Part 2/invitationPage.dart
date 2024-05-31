import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'main.dart';

class invitationPage extends StatefulWidget {
  const invitationPage({super.key});

  @override
  State<invitationPage> createState() => _invitationPageState();
}

class _invitationPageState extends State<invitationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 30),
      body: Column(
        children: [
          // ----------------- 'Factory 1' text -----------------
          Center(
            child: Text(
              'Factory 1',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // ----------------- Main Content -----------------
          Expanded(
            child: Container(
              color: customLightBrown,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  // ----------------- Title -----------------
                  Center(
                    child: Text(
                      'Invitation',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                      child: Text(
                    'Invite users',
                    style: TextStyle(fontSize: 20),
                  )),

                  SizedBox(height: 20),

                  // ------------ Owner's name input ------------
                  Row(
                    children: [
                      Text(
                        "Owner's Name",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Type here',
                        border: InputBorder.none, // Remove default border
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  // ------------ Phone Number box ------------
                  Row(
                    children: [
                      Text(
                        "Owner's Phone Number",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      // ------------ Flag icon ------------
                      Image.asset(
                        'images/Lab 5/malaysia.png',
                        height: 30,
                        width: 30,
                        fit: BoxFit.contain,
                      ),

                      SizedBox(width: 10),

                      // ------------ Country Code ------------
                      Text(
                        '+60',
                        style: TextStyle(fontSize: 20),
                      ),

                      SizedBox(width: 10),

                      // ------------ Input box ------------
                      SizedBox(
                        height: 70,
                        width: 280,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter your phone number',
                              border: InputBorder.none, // Remove default border
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30),

                  // ----------------- Submit button -----------------
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Return back to the dashboard
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => dashboard(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: customBrown,
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

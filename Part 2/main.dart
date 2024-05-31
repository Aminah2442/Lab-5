import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'otpCodePage.dart';

// Define your custom colors
const Color customBeige = Color(0xFFF1E5D1);
const Color customPink = Color(0xFFDBB5B5);
const Color customLightBrown = Color(0xFFC39898);
const Color customBrown = Color(0xFF987070);

void main() {
  runApp(MyApp());
}

// Our main widget
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        home: ActivationPage() // The skeleton of the app
        );
  }
}

// Activation Page
class ActivationPage extends StatefulWidget {
  const ActivationPage({super.key});

  @override
  State<ActivationPage> createState() => _ActivationState();
}

class _ActivationState extends State<ActivationPage> {
  bool accountActivation = true;
  bool isChecked = false;

  void toggleContainer() {
    setState(() {
      accountActivation = !accountActivation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            // ----------------- UPM Logo -----------------
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 200,
                height: 100,
                child: Image.network(
                  'https://upm.edu.my/assets/images23/20170406143426UPM-New_FINAL.jpg',
                ),
              ),
            ),

            // ----------------- Welcome text -----------------
            Container(
              padding: EdgeInsets.only(left: 16.0), // for better alignment
              child: Text(
                'Welcome !',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // ----------------- Main content -----------------
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: customPink,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 3,
                    blurRadius: 5,
                  ),
                ],
              ),
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 40), // Space btw top of container and text

                  // ----------------- 'Enter your..' Text -----------------
                  SizedBox(
                    height: 100,
                    width: 300,
                    child: Text(
                      'Enter your mobile number to activate your account',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),

                  // ----------------- Phone Number box -----------------
                  Row(
                    children: [
                      // ----------- Flag icon ------------
                      Image.asset(
                        'images/Lab 5/malaysia.png',
                        height: 30,
                        width: 30,
                        fit: BoxFit.contain,
                      ),

                      SizedBox(width: 10),

                      // ------------ Country Code -------------
                      Text(
                        '+60',
                        style: TextStyle(fontSize: 20),
                      ),

                      SizedBox(width: 10),

                      // ------------ Input box -------------
                      SizedBox(
                        height: 40,
                        width: 240,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none, // Remove default border
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  // ----------------- Check box & terms text -----------------
                  Row(
                    children: [
                      // Checkbox
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text('I agree to the terms and conditions'),
                    ],
                  ),

                  SizedBox(height: 30), // Space between

                  // ----------------- Get activation code button -----------------
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Go to next page
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => otpCodePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Get Activation Code',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),

                  SizedBox(
                      height: 40), // Space btw bottom of container and button
                ],
              ),
            ),

            SizedBox(height: 30), // Space between

            // ----------------- Disclaimer text -----------------
            Center(
              child: Text(
                'Disclaimer | Privacy Statement',
                style: TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ),

            // ----------------- Copyright text -----------------
            SizedBox(
              width: 350,
              child: Text(
                  'Copyright UPM & Kejuruteraan Minyak Sawit CCS Sdn. Bhd.',
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}

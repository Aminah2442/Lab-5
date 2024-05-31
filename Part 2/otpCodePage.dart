import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'main.dart';

class otpCodePage extends StatefulWidget {
  const otpCodePage({super.key});

  @override
  State<otpCodePage> createState() => _otpCodePageState();
}

class _otpCodePageState extends State<otpCodePage> {
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
                    'https://upm.edu.my/assets/images23/20170406143426UPM-New_FINAL.jpg'),
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
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: customBeige,
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

                  // ------------- 'Enter the code..' Text -------------
                  SizedBox(
                    height: 100,
                    width: 300,
                    child: Text(
                      'Enter the activation code you received via SMS',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),

                  SizedBox(height: 20), // Space btw text and OTP input box

                  // ------------- OTP input box -------------
                  SizedBox(
                    height: 60,
                    width: 240,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black),
                      ),
                      child: TextFormField(
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'OTP',
                          border: InputBorder.none, // Remove default border
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 50), // Space btw otp text and button

                  // ------------- 'Didn't receive?..' text -------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't receive?",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Tap here',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  // ------------- Activate Button -------------
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Go to next page
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => dashboard(),
                          ),
                        );
                      },
                      child: Text(
                        'Activate',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),

                  SizedBox(height: 40),
                ],
              ),
            ),

            SizedBox(height: 50), // Space between

            // ----------------- Disclaimer text -----------------
            Text(
              'Disclaimer | Privacy Statement',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
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

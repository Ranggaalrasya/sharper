import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sharperr/screens/RegisterScreens.dart';

class VerifScreens extends StatelessWidget {
  const VerifScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Center(
                child: SizedBox(
                  height: 200,
                  width: 450,
                  child: Image.asset(
                    'assets/images/register_screens/verifText.png',
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Please check your email',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                'for verification code',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Just one more step !',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Verification code',
                  labelStyle: GoogleFonts.poppins(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: Color(0xffB5B5B5),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: Color(0xffB5B5B5),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: Color(
                          0xffD9A585), // Set focused border color to D9A585
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 24),
              const SizedBox(height: 24),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffD9A585),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    textStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white, // Set text color to white
                      ),
                    ),
                    minimumSize:
                        const Size.fromHeight(50), // Set the button height
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8.0), // Rounded corners
                    ),
                  ),
                  child: const Text(
                    'Thats My code',
                    style: TextStyle(
                        color: Colors.white), // Ensure text color is white
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Navigate to login screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const RegisterScreen(), // Replace with your login screen
                      ),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      children: [
                        const TextSpan(text: ''),
                        TextSpan(
                          text: 'go back',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffD9A585),
                            ),
                          ),
                        ),
                        const TextSpan(text: ' '),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

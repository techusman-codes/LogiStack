import 'package:flutter/material.dart';
import 'package:logistics/features/auth/presenttation/screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent.shade700,
      body: Center(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.2,
              child: Image(
                image: AssetImage('assets/images/image 3.jpg'),
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fitHeight,
              ),
            ),

            Column(
              children: [
                SizedBox(height: 350),
                Image(image: AssetImage('assets/images/123.jpg'), height: 50),
                Center(
                  child: Text(
                    'Samlogistics',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

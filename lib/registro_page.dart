import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroPage extends StatefulWidget {
  const RegistroPage({super.key});

  @override
  State<RegistroPage> createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
   mostrarMensaje(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/png/logo2.png',
                height: 50.0,
              ),
              Text(
                "Welcome",
                style: GoogleFonts.raleway(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                textAlign: TextAlign.start,
                style: GoogleFonts.raleway(
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1FAFD),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/png/logo2.png',
                  height: 90.0,
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Row(
                  children: [
                    Text(
                      "Login to your Account",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.black.withOpacity(0.80)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.07),
                        offset: const Offset(5, 5),
                        blurRadius: 12.0,
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: GoogleFonts.raleway(
                        fontSize: 14,
                        color: Colors.black45,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      // icon: Icon(Icons.verified_user),
                      // prefixIcon: Icon(Icons.add),
                      // suffixIcon: Icon(Icons.ac_unit_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.07),
                        offset: const Offset(5, 5),
                        blurRadius: 12.0,
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: GoogleFonts.raleway(
                        fontSize: 14,
                        color: Colors.black45,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      // icon: Icon(Icons.verified_user),
                      // prefixIcon: Icon(Icons.add),
                      // suffixIcon: Icon(Icons.ac_unit_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                  height: 54.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff1E319D).withOpacity(0.5),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      mostrarMensaje(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff1E319D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60.0,
                ),
                Text(
                  "- Or sign in with -",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.normal,
                    color: Colors.black45,
                  ),
                ),
                const SizedBox(
                  height: 26.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 12.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              offset: const Offset(4, 4),
                              blurRadius: 12.0),
                        ],
                      ),
                      child: Image.asset(
                        "assets/png/google.png",
                        height: 30.0,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 12.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              offset: const Offset(4, 4),
                              blurRadius: 12.0),
                        ],
                      ),
                      child: Image.asset(
                        "assets/png/facebook.png",
                        height: 30.0,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 12.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              offset: const Offset(4, 4),
                              blurRadius: 12.0),
                        ],
                      ),
                      child: Image.asset(
                        "assets/png/twitter.png",
                        height: 30.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: GoogleFonts.raleway(
                        color: Colors.black54,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "Sign up",
                      style: GoogleFonts.raleway(
                        color: const Color(0xff1E319D),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

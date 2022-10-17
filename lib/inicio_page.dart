import 'package:beca/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFF1FAFD),
          child: Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              top: 30,
              bottom: 10,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7 - 20,
                      child: Column(
                        children: [
                          Text(
                            "Benvenido a casa Piero",
                            style: GoogleFonts.comfortaa(
                              fontSize: 25.0,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "¿Qué habitación quieres que modifiquemos?",
                            style: GoogleFonts.comfortaa(
                              fontSize: 15,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3 - 20,
                      height: 70,
                      child: SvgPicture.asset(
                        "assets/svg/snow.svg",
                        color: const Color(0xFF5090FE),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: GridView.count(
                    padding: const EdgeInsets.all(10),
                    physics: const BouncingScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    scrollDirection: Axis.vertical,
                    children: [
                      tajetas("assets/svg/living.svg", "Sala", 2, context),
                      tajetas("assets/svg/kitchen.svg", "Cocina", 1, context),
                      tajetas(
                          "assets/svg/bedroom.svg", "Dormitorio", 4, context),
                      tajetas("assets/svg/readingroom.svg", "Biblioteca", 3,
                          context),
                      tajetas("assets/svg/bathroom.svg", "Baño", 3, context),
                      tajetas(
                          "assets/svg/baby.svg", "Dormitorio Bebé", 2, context),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget tajetas(imagen, titulo, dispositivos, context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        20.0,
      ),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(255, 152, 189, 252),
          offset: Offset(0, 0),
          blurRadius: 10.0,
        ),
      ],
    ),
    child: ElevatedButton(
        onPressed: () {
          Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(1),
                          ),
                        );
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              child: SvgPicture.asset(
                imagen,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              titulo,
              style: GoogleFonts.comfortaa(
                color: Colors.black87,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "$dispositivos dispositivos",
              style: GoogleFonts.comfortaa(color: Colors.black54, fontSize: 15,),
            )
          ],
        )),
  );
}

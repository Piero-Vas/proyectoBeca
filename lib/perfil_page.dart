import 'package:beca/editarperfil_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
   bool _switchValue = false;
    bool _switchValue2 = false;
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
                style: GoogleFonts.comfortaa(
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
                style: GoogleFonts.comfortaa(
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
            child: SizedBox(
              width: double.infinity,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Perfil",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.comfortaa(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF5090FE),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/png/hombre.png",
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Piero Vasquez",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.comfortaa(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF5090FE),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 200,
                    height: 60,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditarPerfilPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5090FE),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text(
                        "Editar Perfil",
                        style: GoogleFonts.comfortaa(fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Text(
                        "Permisos",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.comfortaa(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF5090FE),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF0F6FF),
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                'assets/png/home_inteligent.png',
                                height: 30.0,
                                width: 30.0,
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("Apagar todos los Dispositivos"),
                            Expanded(child: Container()),
                            Switch(
                              value: _switchValue,
                              onChanged: (bool valueIn) {
                                setState(() {
                                  _switchValue = valueIn;
                                });
                              }),
                          ],
                        ),
                        const SizedBox(
                    height: 15,
                  ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF0F6FF),
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                'assets/png/notificacion.png',
                                height: 30.0,
                                width: 30.0,
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("Notificaciones"),
                            Expanded(child: Container()),
                            Switch(
                              value: _switchValue2,
                              onChanged: (bool valueIn) {
                                setState(() {
                                  _switchValue2 = valueIn;
                                });
                              }),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


permisos(){
  return Row();
}
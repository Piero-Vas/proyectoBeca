import 'package:beca/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroPage extends StatefulWidget {
  const RegistroPage({super.key});

  @override
  State<RegistroPage> createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  final TextEditingController _passValue = TextEditingController();
  final TextEditingController _passValueCheck = TextEditingController();
  final TextEditingController _emailValue = TextEditingController();
  final TextEditingController _nameValue = TextEditingController();
  final TextEditingController _lastnameValue = TextEditingController();

  mostrarMensaje(BuildContext context, input) {
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
                'assets/png/cancelar.png',
                height: 50.0,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  Text(
                    "Su ",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.comfortaa(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    "$input ",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.comfortaa(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    "se encuentra vacío",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.comfortaa(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF5090FE),
              ),
              child: const Text("Aceptar"),
            )
          ],
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
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                      color: Color(0xFF5090FE),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Image.asset(
                    'assets/png/logo2.png',
                    height: 90.0,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    Text(
                      "Bienvenido, Complete el registro",
                      style: GoogleFonts.comfortaa(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Colors.black54),
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
                    controller: _nameValue,
                    decoration: InputDecoration(
                      hintText: "Nombre",
                      hintStyle: GoogleFonts.comfortaa(
                        fontSize: 14,
                        color: Colors.black45,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      icon: const Icon(
                        Icons.account_circle_outlined,
                      ),
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
                    controller: _lastnameValue,
                    decoration: InputDecoration(
                      hintText: "Apellido",
                      hintStyle: GoogleFonts.comfortaa(
                        fontSize: 14,
                        color: Colors.black45,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      icon: const Icon(
                        Icons.account_circle_outlined,
                      ),
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
                    controller: _emailValue,
                    decoration: InputDecoration(
                      hintText: "Correo",
                      hintStyle: GoogleFonts.comfortaa(
                        fontSize: 14,
                        color: Colors.black45,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      icon: const Icon(Icons.email_outlined),
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
                    controller: _passValue,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Contraseña",
                      hintStyle: GoogleFonts.comfortaa(
                        fontSize: 14,
                        color: Colors.black45,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      icon: const Icon(Icons.key),
                      // prefixIcon: Icon(Icons.add),
                      suffixIcon: const Icon(Icons.remove_red_eye),
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
                    controller: _passValueCheck,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Confirmar Contraseña",
                      hintStyle: GoogleFonts.comfortaa(
                        fontSize: 14,
                        color: Colors.black45,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      icon: const Icon(Icons.key),
                      // prefixIcon: Icon(Icons.add),
                      suffixIcon: const Icon(Icons.remove_red_eye),
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
                      _nameValue.text.isEmpty
                          ? mostrarMensaje(context, "Nombre")
                          : _lastnameValue.text.isEmpty
                              ? mostrarMensaje(context, "Apellido")
                              : _emailValue.text.isEmpty
                                  ? mostrarMensaje(context, "Correo")
                                  : _passValue.text.isEmpty
                                      ? mostrarMensaje(context, "Contraseña")
                                      : Navigator.of(context)
                                          .pushAndRemoveUntil(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Home(0)),
                                              (Route<dynamic> route) => false);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5090FE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                    child: Text(
                      "Registrar",
                      style: GoogleFonts.comfortaa(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

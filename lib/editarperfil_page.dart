import 'package:beca/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditarPerfilPage extends StatefulWidget {
  const EditarPerfilPage({super.key});

  @override
  State<EditarPerfilPage> createState() => _EditarPerfilPageState();
}

class _EditarPerfilPageState extends State<EditarPerfilPage> {

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
                'assets/png/confirm.png',
                height: 60.0,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  
                  Text(
                    "¿Seguro que quiere editar su perfil?",
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
            
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancelar"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(2),
                          ),
                        );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF5090FE),
              ),
              child: const Text("Aceptar"),
            ),
            
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
                  height: 30.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "¿Cómo estas Piero?, Edita tu Perfil aquí",
                    style: GoogleFonts.comfortaa(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black54),
                        textAlign: TextAlign.start,
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
                  child: TextFormField(
                    initialValue: "Piero Vasquez",
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
                  child: TextFormField(
                    initialValue: "Vasquez Riveros",
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
                  child: TextFormField(
                    initialValue: "piero.vasquezriveros@gmail.com",
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
                  child: TextFormField(
                    initialValue: "123456",
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
                  child: TextFormField(
                    initialValue: "123456",
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
                      mostrarMensaje(context, "Nombre");
                     
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5090FE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                    child: Text(
                      "Guardar Datos",
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

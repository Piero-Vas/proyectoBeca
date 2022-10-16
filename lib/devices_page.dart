import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DevicesPage extends StatefulWidget {
  const DevicesPage({super.key});

  @override
  State<DevicesPage> createState() => _DevicesPageState();
}

class _DevicesPageState extends State<DevicesPage> {
  dynamic _roomValue;
  final List _rooms = [
    "Sala",
    "Cocina",
    "Dormitorio",
    "Biblioteca",
    "Baño",
    "Dormitorio Bebe"
  ];

  bool _switchValue = false;
  double _slidervalue = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFF1FAFD),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 0,
              left: 0,
              top: 10,
              bottom: 10,
            ),
            child: SizedBox(
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xFF5090FE)),
                      child: DropdownButton(
                        elevation: 5,
                        dropdownColor: const Color(0xFF5090FE),
                        style: GoogleFonts.comfortaa(
                            color: Colors.white, fontWeight: FontWeight.w800),
                        hint: const Text(
                          "Seleccione un Espacio  ",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        icon: const Icon(
                          Icons.air,
                          color: Colors.white,
                        ),
                        value: _roomValue,
                        items: _rooms.map((value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _roomValue = value;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 180,
                      child: GridView.count(
                        padding: const EdgeInsets.all(10),
                        crossAxisCount: 1,
                        mainAxisSpacing: 5,
                        scrollDirection: Axis.horizontal,
                        children: [
                          tajetas(
                            "assets/svg/lamp.svg",
                            "Luz",
                            context,
                            false,
                          ),
                          tajetas(
                            "assets/svg/air.svg",
                            "Aire Acondicionado",
                            context,
                            true,
                          ),
                          tajetas(
                            "assets/svg/speaker.svg",
                            "Parlante",
                            context,
                            false,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: SvgPicture.asset(
                              "assets/svg/power.svg",
                              color: const Color(0xFF5090FE),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Encendido",
                            style: GoogleFonts.comfortaa(
                              color: Colors.black87,
                              fontSize: 16,
                            ),
                          ),
                          Expanded(child: Container()),
                          Switch(
                              value: _switchValue,
                              onChanged: (bool valueIn) {
                                setState(() {
                                  _switchValue = valueIn;
                                });
                              }),
                          Text(
                            _switchValue ? "ON" : "OFF",
                            style: GoogleFonts.comfortaa(
                              color: Colors.black87,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: SvgPicture.asset(
                              "assets/svg/thermometer.svg",
                              color: const Color(0xFF5090FE),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Temperatura",
                            style: GoogleFonts.comfortaa(
                              color: Colors.black87,
                              fontSize: 16,
                            ),
                          ),
                          Expanded(child: Container()),
                          Text(
                            "${_slidervalue.round()}°C",
                            style: GoogleFonts.comfortaa(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Slider(
                        value: _slidervalue,
                        min: 0,
                        max: 100,
                        label: _slidervalue.round().toString(),
                        onChanged: (double valueIn) {
                          setState(() {
                            _slidervalue = valueIn;
                          });
                        }),
                    const SizedBox(
                      height: 40,
                    ),
                    // Expanded(child: Container()),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          mode(
                            false,
                            context,
                            "assets/svg/drop.svg",
                            "Seco",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          mode(
                            false,
                            context,
                            "assets/svg/eco.svg",
                            "Eco",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          mode(
                            true,
                            context,
                            "assets/svg/moon.svg",
                            "Nocturno",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Modo Nocturno",
                                  style: GoogleFonts.comfortaa(
                                    color: const Color(0xFF5090FE),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Activado",
                                  style: GoogleFonts.comfortaa(
                                    color: Colors.black54,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    // const SizedBox(
                    //   height: 100,
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget mode(bool active, context, icon, label) {
  return Column(
    children: [
      Container(
        width: MediaQuery.of(context).size.width * 0.20,
        height: MediaQuery.of(context).size.height * 0.10,
        padding: const EdgeInsets.all(20),
        decoration: active
            ? const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 152, 189, 252),
                    offset: Offset(0, 0),
                    blurRadius: 12.0,
                  ),
                ],
              )
            : const BoxDecoration(
                color: Color(0xFFF0F6FF),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 187, 211, 253),
                    offset: Offset(0, 0),
                    blurRadius: 5.0,
                  ),
                ],
              ),
        child: SvgPicture.asset(
          icon,
          color: active ? const Color(0xFF5090FE) : Colors.black54,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        label,
        style: GoogleFonts.comfortaa(
          color: Colors.black87,
        ),
      )
    ],
  );
}

Widget tajetas(imagen, titulo, context, bool select) {
  return Container(
    padding: const EdgeInsets.all(2),
    decoration: select ? const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 128, 172, 248),
          offset: Offset(0, 0),
          blurRadius: 12.0,
        ),
      ],
    ):const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 193, 216, 255),
          offset: Offset(0, 0),
          blurRadius: 10.0,
        ),
      ],
    ),
    child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: select ? Colors.white : const Color(0xFFF0F6FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                0,
              ),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              child: SvgPicture.asset(
                imagen,
                color: select ? const Color(0xFF5090FE) : Colors.black54,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              titulo,
              style: GoogleFonts.comfortaa(
                color: select ? const Color(0xFF5090FE) : Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        )),
  );
}

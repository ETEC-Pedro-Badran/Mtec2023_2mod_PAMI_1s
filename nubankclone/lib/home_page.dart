import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubankclone/opcoes_widget.dart';

import 'extrato_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            title: Container(
                padding: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    color: Colors.white24, shape: BoxShape.circle),
                child: Icon(Icons.person_outline)),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.visibility_outlined)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.help_outline_outlined))
            ],
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, bottom: 18),
                      child: Text(
                        "Prof. Evaldo",
                        style: GoogleFonts.karla(color: Colors.white),
                      ),
                    ),
                  ],
                ))),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Conta",
                    style: GoogleFonts.karla(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ExtratoPage(),
                      ));
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 20,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                r'R$ 2.500,52',
                style: GoogleFonts.karla(
                    fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    OpcaoWidget(icon: Icons.pix, rotulo: "Pix"),
                    OpcaoWidget(
                        icon: Icons.local_atm_rounded, rotulo: "Cobrar"),
                    OpcaoWidget(
                        icon: FontAwesomeIcons.barcode, rotulo: "Pagar"),
                    OpcaoWidget(
                        icon: Icons.price_change_outlined,
                        rotulo: "Transferir"),
                    OpcaoWidget(
                        icon: Icons.add_card_outlined, rotulo: "Depositar"),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

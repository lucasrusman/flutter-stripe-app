// Flutter imports:
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PagoCompleto extends StatelessWidget {
  const PagoCompleto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pago realizado!'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            FontAwesomeIcons.star,
            color: Colors.white54,
            size: 100,
          ),
          SizedBox(height: 20),
          Text(
            'Pago realizado correctamente!',
            style: TextStyle(color: Colors.white, fontSize: 22),
          )
        ],
      )),
    );
  }
}

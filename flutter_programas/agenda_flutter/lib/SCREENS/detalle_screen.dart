import 'package:agenda_flutter/models/contacto.dart';
import 'package:flutter/material.dart';

class DetalleScreen extends StatelessWidget {
  
  Contacto contacto;
   
  DetalleScreen({Key? key, required this.contacto}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('DetalleScreen'),
      ),
      body: Center(
         child: Column(children: <Widget>[Image.asset(contacto.imagen),
          Text(contacto.nombre),
          Text(contacto.direccion),
          Text(contacto.telefono)]),
      ),
    );
  }
}
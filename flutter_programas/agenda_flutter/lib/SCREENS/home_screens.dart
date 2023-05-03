import 'package:agenda_flutter/SCREENS/detalle_screen.dart';
import 'package:agenda_flutter/utils/utils.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('HomeScreen'),
      ),
      body: Center(
         child: ListView(
          children: Utils.listacontacto.map((contacto){
            return ListTile(
              title: Text(contacto.nombre),
              subtitle: Text(contacto.telefono),
              leading: CircleAvatar(backgroundImage: AssetImage(contacto.imagen),
              ),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> DetalleScreen(contacto:contacto)
                ));
              },
            );
          }).toList(),
         ),
      ),
    );
  }
}
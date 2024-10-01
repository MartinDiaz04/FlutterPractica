import 'package:flutter/material.dart';


void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi app",
      home: Inicio()
    );
  }
}

// Poner imagenes en un ListView
// body: ListView(
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.all(20.0),
//             child: Image.network("https://img.freepik.com/fotos-premium/imagen-fondo_910766-187.jpg"),
//           ),
//         ],
//       ),      


// class Inicio extends StatefulWidget {
//   const Inicio({super.key});

//   @override
//   State<Inicio> createState() => _InicioState();
// }

// class _InicioState extends State<Inicio> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Mi App"),
//       ),
//       body: ListView(
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.all(20.0),
//             child: Image.network("https://img.freepik.com/fotos-premium/imagen-fondo_910766-187.jpg"),
//           ),
//         ],
//       ),      
//     );
//   }
// }

// Row y Column
// Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,     
//         mainAxisSize: MainAxisSize.max,   
//         children: <Widget>[
//           Container(     
//             height: 50,
//             width: MediaQuery.of(context).size.width*0.5,       
//             child: Text("Hola 01", textAlign: TextAlign.center),
//           ),
//           Text("Hola 02"),          
//         ],
//       )





class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi App"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Row(
            mainAxisSize: MainAxisSize.min,            
            children: <Widget>[              
              Icon(Icons.access_time),
              SizedBox(
                width: 7,
              ),
              Text("Now"),              
            ],
          ),

          onPressed: (){
            var t = DateTime.now();
            print(t);
          },
        )
      ),
    );
  }
}
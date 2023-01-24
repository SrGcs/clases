
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
} 

class _MyAppState extends State<MyApp> {
  Empresa _facebook = new Empresa(
    "Facebook", "Mark Zuckerberg", 50000000
  );  


  @override
  void initState() {
    super.initState();

    print(_facebook.nombre);
    print(_facebook.propietario);
    print(_facebook.ingresoAnual);


  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "clases",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Clases"),
          ),
          body: Center(
            child: Text(
              _facebook.propietario,
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}

class Empresa {
  late String nombre;
  late String propietario;
  late int ingresoAnual;

  Empresa(String nombre, String propietario, int ingresoAnual) {
   this.nombre=nombre;
   this.propietario=propietario;
   this.ingresoAnual=ingresoAnual;
  }
}




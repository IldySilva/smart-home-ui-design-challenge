import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:smart_home_ui_challenge/componentes/caixa_dispositivo.dart';
import 'package:smart_home_ui_challenge/models/dispositivo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  var compartimentos = ["Sala", "Quarto", "Sala de Jantar", "Cozinha"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      title: 'Casa Inteligente',
      home: SafeArea(
        child: Scaffold(

          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const ListTile(
                  trailing: Icon(MingCute.notification_fill),
                  leading: Icon(
                    MingCute.snow_fill,
                    size: 40,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "22º C",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var compartimento in compartimentos)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Chip(
                            elevation: 1,
                            side: BorderSide.none,
                              label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(compartimento),
                          )),
                        )
                    ],
                  ),
                ),
           const SizedBox(height: 10,),
           Expanded(
                  child: GridView(gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20),children:  [

                    for(Dispositivo dispositivo in dispositivos)
                    CaixaDispositivo(dispositivo:dispositivo),



                  ],),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:smart_home_ui_challenge/componentes/caixa_dispositivo.dart';
import 'package:smart_home_ui_challenge/models/dispositivo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Casa Inteligente',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
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
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  MingCute.home_2_line,
                  color: Colors.blueAccent,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(MingCute.calendar_2_line),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(MingCute.chart_bar_2_line),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(MingCute.more_1_line),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: ListTile(
                trailing: Icon(MingCute.notification_fill),
        subtitle: Text("Bem vindo ao Sistema IO"),
                title: Text(
                  "Olá,Flutter",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
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
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: [
                  for (Dispositivo dispositivo in dispositivos)
                    CaixaDispositivo(dispositivo: dispositivo),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

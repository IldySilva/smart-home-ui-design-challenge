import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:smart_home_ui_challenge/models/dispositivo.dart';

class CaixaDispositivo extends StatelessWidget {
   CaixaDispositivo({super.key,required this.dispositivo});

  Dispositivo dispositivo;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child:  Column(
        children: [
          const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  MingCute.air_condition_fill,
                  color: Colors.blueAccent,
                  size: 30,
                ),
              )),
          Text(
            dispositivo.nome,
            style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),

          ),
          Text(dispositivo.descricao,style: const TextStyle(color: Colors.grey),),
          Switch(value: dispositivo.ligado, onChanged: (v){

          })
        ],
      ),
    );
  }
}

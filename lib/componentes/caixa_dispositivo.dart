import 'package:flutter/material.dart';
import 'package:smart_home_ui_challenge/models/dispositivo.dart';

class CaixaDispositivo extends StatelessWidget {
   CaixaDispositivo({super.key,required this.dispositivo});

  Dispositivo dispositivo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:16.0,right:16,left: 16),
      child: Material(

        color: Colors.white,
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  dispositivo.iconData,
                  color: Colors.blueAccent,
                  size: 30,
                ),
              ),
              Text(
                dispositivo.nome,
                style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),

              ),
              Text(dispositivo.descricao,style: const TextStyle(color: Colors.grey),),
            Expanded(child: SizedBox()),
              StatefulBuilder(
                builder: (context,state) {
                  return Switch(value: dispositivo.ligado, onChanged: (v){

                    state((){

                      dispositivo.ligado=v;
                    });
                  });
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}

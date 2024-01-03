import 'package:flutter/cupertino.dart';
import 'package:icons_plus/icons_plus.dart';

class Dispositivo {
  String nome;
  bool ligado;
  String descricao;
  IconData iconData;
  Dispositivo(
      {required this.nome,
      required this.ligado,
      required this.descricao,
      required this.iconData});
}

List<Dispositivo> dispositivos = [
  Dispositivo(
      nome: "Ar Condicionado",
      ligado: false,
      descricao: "AIER 182",
      iconData: MingCute.air_condition_fill),
  Dispositivo(
      nome: "Smart TV",
      ligado: false,
      descricao: "Samsung - 01 Channel",
      iconData: MingCute.tv_2_fill),
  Dispositivo(
      nome: "Lampada Branca",
      ligado: false,
      descricao: "AIER 182",
      iconData: MingCute.light_fill),
  Dispositivo(
      nome: "Maquina de Lavar",
      ligado: false,
      descricao: "AIER 182",
      iconData: MingCute.wash_machine_fill),
  Dispositivo(
      nome: "Roteador",
      ligado: false,
      descricao: "HUAWEI 182",
      iconData: MingCute.router_modem_fill)
  ,  Dispositivo(
      nome: "Geleira",
      ligado: false,
      descricao: "HP 182",
      iconData: MingCute.refresh_2_fill)
];

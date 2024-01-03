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
      iconData: MingCute.air_condition_open_line),
  Dispositivo(
      nome: "Smart TV",
      ligado: false,
      descricao: "Samsung - 01 Channel",
      iconData: MingCute.tv_1_line),
  Dispositivo(
      nome: "Lampada Branca",
      ligado: false,
      descricao: "AIER 182",
      iconData: MingCute.light_line),
  Dispositivo(
      nome: "Maquina de Lavar",
      ligado: false,
      descricao: "AIER 182",
      iconData: MingCute.wash_machine_line),
  Dispositivo(
      nome: "Roteador",
      ligado: false,
      descricao: "HUAWEI 182",
      iconData: MingCute.router_modem_line)
  ,  Dispositivo(
      nome: "Geleira",
      ligado: false,
      descricao: "HP 182",
      iconData: MingCute.fridge_line)
];

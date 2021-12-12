import 'package:flutter/material.dart';
import 'models.dart';


class Bar{
  final String id;
  final String name;
  final String address;
  final String musicTaste;
  final String owner;
  final String idOwner;
  final String aforo;
  final String aforoMax;
  final String horario;
  final String descripcion;
  final String imageUrl;

  const Bar({
    @required this.id,
    @required this.name,
    @required this.address,
    @required this.musicTaste,
    @required this.owner,
    @required this.idOwner,
    @required this.aforo,
    @required this.aforoMax,
    @required this.horario,
    @required this.descripcion,
    @required this.imageUrl
    
  });

  factory Bar.fromJson(Map<String, dynamic> json) {
    return Bar(
      id: json['id'],
      name: json['name'],      
      address: json['address'],
      musicTaste: json['musicTaste'],
      owner: json['owner'],
      idOwner: json['idOwner'],
      aforo: json['aforo'],
      aforoMax: json['aforoMax'],
      horario: json['horario'],
      descripcion: json['descripcion'],
      imageUrl: json['imageUrl'],
    );
  }
}
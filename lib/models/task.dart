import 'package:geolocator/geolocator.dart';

class Task {
  String direccionOrigen = '';
  String direccionDestino = '';
  String lugarOrigen = '';
  String lugarDestino = '';
  DateTime fechaCarrera ;
  String estatdo=  '';
  //  Geopoint ubicacion;

  Task({
    this.direccionOrigen = '',
    this.direccionDestino = '',
    this.lugarOrigen = '',
    this.lugarDestino = '',
    this.estatdo = '',
    required this.fechaCarrera ,
    // this.ubicacion = Posi,
  });
}

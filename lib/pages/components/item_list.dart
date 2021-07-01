import 'package:cuntercarreras/models/task.dart';
import 'package:flutter/material.dart';

class ItemCarrera extends StatelessWidget {
  final Task carrera;

  const ItemCarrera({Key? key, required this.carrera}) : super(key: key);

  // ItemCarrera({Key? key,  this.carrera  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          informationCarrera(carrera),
          btnandStatus(carrera.estatdo),
        ],
      ),
    );
  }

  Widget btnandStatus(String estado) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete_forever, color: Colors.white38,),
          ),
          Container(
            child: Text(
              '$estado',
              style: TextStyle(
                color: Colors.lime,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget informationCarrera(Task task) {
    DateTime fc = task.fechaCarrera;
    return Expanded(
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            informationContainer(
              title: 'Origen',
              description: '${task.lugarOrigen}',
            ),
            informationContainer(
              title: 'Destino',
              description: '${task.lugarDestino}',
            ),
            informationContainer(
              title: 'Destino',
              description: '10h30',
                  // (fc.day + '/' + fc.month + '/' + fc.year + ' '+fc.hour +'H' + fc.minute >= 10 ? +'0' +fc.minute : fc.minute).toString() ,
            ),
            // Text('${task.fechaCarrera.toIso8601String()}'),
          ],
        ),
      ),
    );
  }
}

Widget informationContainer({
  String title = '',
  String description = '',
  Color colorTitle = Colors.lime,
  Color colorDescription = Colors.white,
}) {
  return Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      Text(
        '$title: ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: colorTitle,
        ),
      ),
      Expanded(
        child: SizedBox(
          child: Text(
            '$description',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    ],
  );
}

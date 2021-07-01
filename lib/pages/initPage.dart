import 'package:cuntercarreras/controllers/get_controllers/file_controller.dart';
import 'package:cuntercarreras/helpers/const/sizes_const.dart';
import 'package:cuntercarreras/models/task.dart';
import 'package:cuntercarreras/pages/components/item_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitPagePage extends StatelessWidget {
  final FileController _fileCtrl = Get.put(FileController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.grey[800],
     
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: width * 0.06,
              right: width * 0.06,
              top: height * 0.02,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                inputTarea(),
                Divider(
                  color: Colors.lime,
                ),
                titleSection(),
                SizedBox(height:  height * 0.03),
                listCarrera(),
                SizedBox(height:  height * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget titleSection() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.015),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          'Lista de Carreras',
          style: TextStyle(
            color: Colors.lime,
            fontSize: 21,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget listCarrera() {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: List.generate(
                10,
                (index) => ItemCarrera(
                  carrera: Task(
                    direccionOrigen: 'Pradera Arupos y Nogales',
                    direccionDestino: 'jose antonio y lourdes',
                    estatdo: 'en proceso',
                    lugarDestino: 'Dr Tito',
                    lugarOrigen: 'San Gabriel',
                    fechaCarrera: DateTime.now(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget itemList() {
    return Container(
      child: Row(
        children: [],
      ),
    );
  }

  Widget inputTarea() {
    return SizedBox(
      child: TextFormField(
        controller: _fileCtrl.taskInput,
        style: TextStyle(
          color: Colors.white,
        ),

        cursorColor: Colors.lime,
      
        decoration: InputDecoration(
          hintText: 'Origen',
          hintStyle: TextStyle(
            color: Colors.grey[500],
          ),
          fillColor: Colors.grey[700],
          filled: true,
          
          helperText: 'Ingresar Tarea',

          helperStyle: TextStyle(
            color: Colors.grey[400],
          ),
          suffixIcon: Icon(
            Icons.add,
            color: Colors.lime,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}

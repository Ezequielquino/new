import 'package:flutter/material.dart';

class AgregarImagen extends StatelessWidget {
  const AgregarImagen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            height: 70.0,
            width: double.infinity,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(width: 80.0),
                Text(
                  "Agregar Imagen",
                  style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 70.0),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 10.0,
                  child: Icon(
                    Icons.close_sharp,
                    size: 15.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            children: const [
              CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 30.0,
                  child: Icon(
                    Icons.camera_alt_rounded,
                    size: 35.0,
                    color: Colors.blue,
                  )),
              SizedBox(width: 40.0),
              Text(
                "Agregar Foto",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 15.0),
          Row(
            children: const [
              CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 30.0,
                  child: Icon(
                    Icons.image,
                    size: 35.0,
                    color: Colors.blue,
                  )),
              SizedBox(width: 40.0),
              Text(
                "Subir foto",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}

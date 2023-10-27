import 'package:flutter/material.dart';

class MiniMovie extends StatelessWidget {
  int indexImg =0;
   MiniMovie(this.indexImg,{super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          width: 150.0,
          height: 150.0,
          decoration:  BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            image: DecorationImage(
              image: AssetImage('lib/assets/img$indexImg.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              /*
              const Positioned(
                top: 6,
                left: 4,
                child: Text(
                  'N',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),*/
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      color: Colors.red,
                      child: const Text(
                        'Nuevos capitulos',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: const Text(
                        'Ver ahora',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  color: Colors.red,
                  child: const Text(
                    'Top 10',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        );
  }
}
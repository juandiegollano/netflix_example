import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(

        borderRadius: BorderRadius.circular(18.0)
      ),
      child: Container(
        // width: 100.0,
        height: 450.0,
        decoration: const  BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          image:  DecorationImage(
            image: AssetImage('lib/assets/oppenheimer.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child:  Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        icon: const Icon(Icons.play_arrow, color: Colors.black),
                        style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        
                      ),
                        
                        onPressed: () {
                        
                      }, 
                      label: const Text('Reproducir', style: TextStyle(color: Colors.black, fontSize: 18.0),)),
                      ElevatedButton.icon( 
                        icon: const Icon(Icons.add),
                        style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                        
                      ),
                        onPressed: () {
                      },
                       label: const Text('Mi lista', style: TextStyle(color: Colors.white, fontSize: 18.0),))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

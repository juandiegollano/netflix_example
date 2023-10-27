import 'package:flutter/material.dart';

class TextButton1 extends StatelessWidget {
  const TextButton1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)))),
          child: const Text('Series',style: TextStyle(color: Colors.white)),
        ),
        const SizedBox(
          width: 10,
        ),
        OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
               
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: const BorderSide(color: Colors.white, width: 3),
                  
              ),
                  )
                  ),
          child: const Text('Peliculas', style: TextStyle(color: Colors.white),),
        ),
        const SizedBox(
          width: 10,
        ),
        OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)))),
          child: const Text('Categorias',style: TextStyle(color: Colors.white)),
        ),
        
      ],
    );
  }
}

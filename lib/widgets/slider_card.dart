import 'package:basic_app/widgets/mini_movie.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class SliderCard extends StatelessWidget {
   
  const SliderCard({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
       padding: const EdgeInsets.only(left: 5.0, right: 5),
       
       itemCount: 6,
       itemBuilder: (context, index) {
         return  Row( children: [
          MiniMovie(Random().nextInt(7)),
          const SizedBox(width: 7)
         ],
          
          );
       },
           ),
    );
         

  }
}
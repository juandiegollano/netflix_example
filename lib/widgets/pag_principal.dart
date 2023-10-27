import 'package:basic_app/widgets/main_card.dart';
import 'package:basic_app/widgets/slider_card.dart';
import 'package:basic_app/widgets/slides_textbutton.dart';
import 'package:flutter/material.dart';


class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TextButton1(),
        MainCard(),
        SizedBox(
          height: 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Nuevos lanzamientos',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
        ),
        SliderCard(),
        SizedBox(
          height: 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Para ti',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
        ),
        SliderCard(),
        SizedBox(
          height: 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Comedia',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
        ),
        SliderCard(),
        SizedBox(height: 20)
      ],
    );
  }
}

import 'package:flutter/material.dart';

class PopularCity extends StatefulWidget {
  const PopularCity({super.key, required this.city, required this.country});
  final String city;
  final String country;

  @override
  State<PopularCity> createState() => _PopularCityState();
}

class _PopularCityState extends State<PopularCity> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: 140,
          height: 180,
          child: Card(),
        ),
        Text(widget.city)
      ],
    );
  }
}

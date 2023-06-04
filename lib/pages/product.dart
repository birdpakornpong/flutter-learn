import 'dart:developer';

import 'package:flutter/material.dart';

import './widget/popular_city_item.dart';
import './widget/titlebar_button.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    var container = SizedBox(
      height: 64,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              radius: 32,
            ),
          );
        },
      ),
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // popular city bar
        // TitleBarButton(
        //     title: 'popular city',
        //     onPress: () {
        //       log('pass button');
        //     }),
        // list popular city

        // list trending place
        TitleBarButton(
            title: 'popular city',
            onPress: () {
              log('pass button');
            }),

        //list
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Card(
                    child: SizedBox(
                      width: 100,
                      height: 120,
                    ),
                  ));
            },
          ),
        ),
        // travel with friend bar
        TitleBarButton(
            title: 'popular city',
            onPress: () {
              log('pass button');
            }),
        // list frind
        container,
        const PopularCity(city: 'bkb', country: 'th'),
      ],
    );
  }
}

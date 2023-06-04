import 'package:flutter/material.dart';

import './model/citymodel.dart';
import './services/city.dart';

class GetHttp extends StatefulWidget {
  const GetHttp({super.key});

  @override
  State<GetHttp> createState() => _GetHttpState();
}

class _GetHttpState extends State<GetHttp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('test')),
        body: Card(
          child: FutureBuilder(
            future: getCityWeather(city: 'London'),
            builder:
                (BuildContext context, AsyncSnapshot<ExchangeRate> snapshot) {
              if (snapshot.hasError) {
                return Center(child: Text('${snapshot.error}'));
              }

              if (snapshot.hasData) {
                final cityWeather = snapshot.data;
                return Column(children: [
                  Text(cityWeather!.name),
                  Text(cityWeather.coord.lat.toString()),
                  Text('text2'),
                  Text('text2'),
                ]);
              }

              // loading
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),

          // Column(children: [
          //   Text('text2'),
          //   Text('text2'),
          //   Text('text2'),
          //   Text('text2'),
          // ]),
        ));
  }
}

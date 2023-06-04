import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandPage extends StatelessWidget {
  const LandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Business Card')),
        body: Center(
          child: Card(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://thestandard.co/wp-content/uploads/2022/10/%E0%B9%80%E0%B8%AA%E0%B8%B5%E0%B8%A2%E0%B8%87%E0%B8%99%E0%B8%81%E0%B8%A3%E0%B9%89%E0%B8%AD%E0%B8%87.jpg')),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Pakornpong',
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  color: Colors.blue, letterSpacing: .5),
                            )),
                        const Text('birdpakornpong@gmail.com'),
                        const Text('0645420333')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

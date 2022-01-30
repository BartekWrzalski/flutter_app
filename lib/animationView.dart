import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';

class AnimationView extends StatefulWidget {
  AnimationView({Key? key}) : super(key: key);
  final frames = List<String>.generate(210, (i) => 'images/animation/${(i + 1).toString().padLeft(4, '0')}.jpg');

  @override
  _AnimationState createState() => _AnimationState();
}

class _AnimationState extends State<AnimationView> {
  int index = 0;
  bool loaded = false;

  List<Image> images = [];

  @override
  void initState() {
    super.initState();
    for (var frame in widget.frames) {
      images.add(Image.asset(frame));
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    for (var image in images) {
      precacheImage(image.image, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animacja"),
      ),
      body: Center(
        child: GestureDetector(
          onHorizontalDragUpdate: (details) {
            setState(() {
              index += details.delta.dx.toInt() * -1;
              index = min(209, max(0, index));
            });
          },
          child: Stack(
            children: [
              Text(index.toString()),
              TextOrNot(),
              Center(child: images.elementAt(index),)
          ],
          )
        )
      ),
    );
  }

  Widget TextOrNot() {
    if (30 < index && index < 65) {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.12,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(child: Text("Telewizor"))
      );
    }
    if (115 < index && index < 145) {
      return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.12,
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(child: Text("Szafa jak szafa, każdy widzi"))
      );
    }
    if (155 < index && index < 180) {
      return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.12,
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(child: Text("Komoda bez uchwytów"))
      );
    }
    return const Text("");
  }
}

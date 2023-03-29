import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'Screen2.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) =>  MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        debugShowCheckedModeBanner: false,
        home: Screen1(),
      ), // Wrap your app
    ),
  );
}

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backGroundColor(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            image(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            importButton(),
          ],
        ),
      ),
    );
  }

  BoxDecoration backGroundColor() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.white,
          Colors.grey,
          Colors.blue,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }

  Center image() {
    return Center(
      child: Image(
          image: const AssetImage('images/import (1).png'),
          width: MediaQuery.of(context).size.width * 0.5),
    );
  }

  ElevatedButton importButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Screen2()),
        );
      },
      style: ElevatedButton.styleFrom(
          fixedSize: Size(MediaQuery.of(context).size.width * 0.75,
              MediaQuery.of(context).size.height * 0.05),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      child: const Text(
        'Select File',
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}


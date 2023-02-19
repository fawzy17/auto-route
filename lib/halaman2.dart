
import 'package:autoroute/route/router.gr.dart';
import 'package:flutter/material.dart';


import 'package:auto_route/auto_route.dart';

// ignore: camel_case_types, must_be_immutable
class halamandua extends StatelessWidget {
  halamandua({Key? key, required this.nama, required this.npm, required this.email}) : super (key : key);

  String? nama, npm, email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Nama: $nama'),
            Text('Npm: $npm'),
            Text('Email: $email'),
            ElevatedButton(
              child: const Text('Goto halaman 3'),
              onPressed: () {
                context.pushRoute(const Routetiga());
              },
            ),
            ElevatedButton(
              child: const Text('Back'),
              onPressed: () {
                context.pushRoute(Routesatu());
              },
            ),
          ],
        ),
      ),
    );
  }
}
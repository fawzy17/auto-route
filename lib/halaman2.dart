import 'package:auto_route/annotations.dart';
import 'package:autoroute/route/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:auto_route/auto_route.dart';

class halamandua extends StatelessWidget {
  halamandua({Key? key, required this.nama, required this.npm}) : super (key : key);

  String? nama, npm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Nama: $nama'),
            Text('Npm: $npm'),
            ElevatedButton(
              child: Text('goto halaman 3'),
              onPressed: () {
                context.pushRoute(Routetiga());
              },
            )
          ],
        ),
      ),
    );
  }
}
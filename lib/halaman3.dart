import 'package:flutter/material.dart';
import 'package:autoroute/route/router.gr.dart';
import 'package:auto_route/auto_route.dart';

// ignore: camel_case_types
class halamantiga extends StatelessWidget {
  const halamantiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("halaman 3"),
            ElevatedButton(
              child: const Text('Back'),
              onPressed: () {
                context.popRoute();
              },
            ),
            ElevatedButton(
              child: const Text('Goto halaman 1'),
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
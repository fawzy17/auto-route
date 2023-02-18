import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:autoroute/route/router.gr.dart';

class halamansatu extends StatelessWidget {
  halamansatu({super.key});
  final _controllerNama = TextEditingController();
  final _controllerNpm = TextEditingController();

  String nama = '', npm = '';
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _controllerNama,
              decoration: InputDecoration(
                hintText: 'Nama',
                labelText: 'Nama'
              ),
            ),
            TextField(
              controller: _controllerNpm,
              decoration: InputDecoration(
                hintText: 'Npm',
                labelText: 'Npm'
              ),
            ),
            ElevatedButton(
              child: Text('input'),
              onPressed: () {
                nama = _controllerNama.text;
                npm = _controllerNpm.text;
                // context.router.push(Routedua(nama: nama, npm: npm));
                context.pushRoute(Routedua(nama: nama, npm: npm));
              },
            )
          ],
        ),
      ),
    );
  }
}
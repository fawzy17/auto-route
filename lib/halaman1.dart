import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:autoroute/route/router.gr.dart';

// ignore: camel_case_types, must_be_immutable
class halamansatu extends StatelessWidget {
  halamansatu({super.key});
  final _controllerNama = TextEditingController();
  final _controllerNpm = TextEditingController();
  final _controllerEmail = TextEditingController();

  final formKey = GlobalKey<FormState>();



  String nama = '', npm = '', email = '';
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _controllerNama,
                decoration: const InputDecoration(
                  hintText: 'Nama',
                  labelText: 'Nama'
                ),
                validator: (value) {
                  if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return "Enter correct Name";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                controller: _controllerNpm,
                decoration: const InputDecoration(
                  hintText: 'Npm',
                  labelText: 'Npm'
                ),
                validator: (value) {
                  if (value!.isEmpty || !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$').hasMatch(value)) {
                    return "Enter correct NPM";
                  } else {
                    return null;
                  }
                },
                
              ),
              TextFormField(
                controller: _controllerEmail,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email'
                ),
                validator: (value) {
                  if (value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)) {
                    return "Enter correct Email";
                  } else {
                    return null;
                  }
                },
              ),
              ElevatedButton(
                child: const Text('input'),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    nama = _controllerNama.text;
                    npm = _controllerNpm.text;
                    email = _controllerEmail.text;
                    // context.router.push(Routedua(nama: nama, npm: npm));
                    context.pushRoute(Routedua(nama: nama, npm: npm, email: email));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
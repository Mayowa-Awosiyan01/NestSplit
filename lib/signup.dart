import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("NestSplit"),
        leading: Image.asset("assets/favicon.png"),
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              autofocus: true,
              obscureText: false,
              decoration: const InputDecoration(
                  hintText: "Email", prefixIcon: Icon(Icons.mail_outline)),
            ),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Password", prefixIcon: Icon(Icons.key_outlined)),
            ),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Re-type Password",
                  prefixIcon: Icon(Icons.key_outlined)),
            )
          ],
        ),
      ),
    );
  }
}

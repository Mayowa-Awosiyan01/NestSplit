import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Form(
            child: Column(
              children: [
                const SizedBox(height: 80),
                TextFormField(
                  autofocus: true,
                  cursorErrorColor: Colors.red,
                  showCursor: true,
                  decoration: const InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.mail_outlined),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 8.0),
                        borderRadius: BorderRadius.all(Radius.zero)),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  autofocus: false,
                  cursorErrorColor: Colors.red,
                  showCursor: true,
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 8.0),
                          borderRadius: BorderRadius.all(Radius.zero)),
                      prefixIcon: Icon(Icons.key_outlined)),
                  enableSuggestions: false,
                  autocorrect: false,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

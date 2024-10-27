import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Signup extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  //final TextEditingController retypeController = TextEditingController();

  final supabase = Supabase.instance.client;
  Signup({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                autocorrect: false,
                autofocus: true,
                obscureText: false,
                decoration: const InputDecoration(
                    hintText: "Email", prefixIcon: Icon(Icons.mail_outline)),
              ),
              TextFormField(
                controller: passwordController,
                autocorrect: false,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Password", prefixIcon: Icon(Icons.key_outlined)),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    final response = await supabase.auth.signUp(
                        password: passwordController.text,
                        email: emailController.text);
                  },
                  child: const Text("Sign Up Now!"))
            ],
          ),
        ),
      ),
    );
  }
}

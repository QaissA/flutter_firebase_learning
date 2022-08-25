import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "flutter learning",
    theme: ThemeData(primarySwatch: Colors.amber),
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("flutter learning"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('email'),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _email,
              decoration: InputDecoration(hintText: "enter your email"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Password"),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _password,
              decoration: InputDecoration(hintText: "enter your password"),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 150,
                      spreadRadius: 1,
                    )
                  ]),
              child: TextButton(
                onPressed: () {},
                child: Text('Register'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

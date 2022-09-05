import 'package:flutter/material.dart';
import 'package:string_validator_extension/string_validator_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final emailEdc = TextEditingController();
  bool isEmailValid = false;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: emailEdc,
                decoration: const InputDecoration(hintText: 'Input email'),
                onChanged: (value) {
                  setState(() {
                    isEmailValid = value.isEmail();
                  });
                },
                validator: (val) {
                  if (val == null) {
                    return null;
                  }
                  return !val.isEmail() ? 'Email is not valid' : null;
                },
              ),
              const SizedBox(height: 16),
              Text('Is Email Valid: $isEmailValid'),
              ElevatedButton(
                child: const Text('Check Email'),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    
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

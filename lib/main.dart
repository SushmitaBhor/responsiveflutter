import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff0A0171),
      body: Container(child: width > 600 ? large() : small()),
    );
  }
}

small() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Flexible(
          child: Image.asset(
            "asset/icon.png",
            height: 158,
            width: 177,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        commonForm()
      ],
    ),
  );
}

large() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Flexible(
        child: Image.asset(
          "asset/icon.png",
          height: 158,
          width: 177,
        ),
      ),
      const SizedBox(
        width: 60,
      ),
      Expanded(
        child: commonForm(),
      ),
    ],
  );
}

Form commonForm() {
  return Form(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Welcome Back!',
        style: TextStyle(color: Colors.white),
      ),
      const SizedBox(
        height: 10.0,
      ),
      Text(
        'Please Log into your existing account',
        style: TextStyle(color: Colors.white),
      ),
      const SizedBox(
        height: 10.0,
      ),
      TextFormField(
        style: TextStyle(color: Colors.white),
        controller: emailController,
        decoration: InputDecoration(
          hintText: 'Your Email',
          hintStyle: TextStyle(color: Colors.white),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      TextFormField(
          controller: passwordController,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Your Password',
            hintStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(color: Colors.white),
            ),
          )),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
        height: 58.0,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Login'),
          style: OutlinedButton.styleFrom(
              backgroundColor: Color(0xff2BC990),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0))),
        ),
      )
    ],
  ));
}

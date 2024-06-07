import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopUp Screen Project',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 241, 244),
      appBar: AppBar(
        title: Text(
          "Pop Up Screen",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        backgroundColor: const Color.fromARGB(255, 237, 198, 198),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text("This is a Sample Alert box"),
                      content: TextButton(
                          onPressed: () {},
                          child: Text("Click Here to view Details ")),
                      actions: [
                        TextButton(
                          onPressed: () {},
                          child: Text("Ok"),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("Cancel"),
                        )
                      ],
                    ),
                  );
                },
                child: Text(
                  "Pop Up Button",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Click Here",
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}

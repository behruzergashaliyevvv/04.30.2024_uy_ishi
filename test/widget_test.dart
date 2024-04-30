import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finance Mobile app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 250, 250, 250),
        ),
      ),
      home: const MyHomePage(title: "SHAHZAIB \nɢᴏᴏᴅ ᴍᴏʀɴɪɴɢ"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(title),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle,
            size: 53,
          ),
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Hesap düğmesi onPressed mantığı
            },
            icon: const Icon(
              Icons.notifications_outlined,
              size: 53,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: const EdgeInsets.only(
            bottom: 500,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: const Color.fromARGB(255, 253, 253, 253),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 0, 238, 195).withOpacity(0.9),
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Your total balance',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '\$7 233.00',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '    Hide',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 227, 224),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_off,
                      color: Color.fromARGB(255, 5, 0, 0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
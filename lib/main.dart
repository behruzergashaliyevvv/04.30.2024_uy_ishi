import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
          seedColor: Color.fromARGB(255, 250, 250, 250),
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
        child: RawScrollbar(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 45, bottom: 45),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color.fromARGB(255, 253, 253, 253),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 0, 238, 195)
                          .withOpacity(0.9),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
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
                          icon: const Icon(
                            Icons.visibility_off,
                            color: Color.fromARGB(255, 5, 0, 0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildButtonWithIcon("Send", Icons.send,
                      const Color.fromARGB(255, 40, 196, 45)),
                  _buildButtonWithIcon("Receive", Icons.arrow_downward,
                      const Color.fromARGB(255, 87, 175, 90)),
                  _buildButtonWithIcon("Swap", Icons.swap_horiz,
                      const Color.fromARGB(255, 130, 66, 202)),
                  _buildButtonWithIcon("Deposit", Icons.account_balance_wallet,
                      const Color.fromARGB(255, 0, 0, 0)),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                "Recent Transactions",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: RawScrollbar(
                  thumbVisibility: true,
                  thickness: 8.0,
                  radius: const Radius.circular(4.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _transactionHistoryWith(
                          "From Ahmad Mudhal          +\$3 455.00            ",
                          Icons.arrow_downward,
                          const Color.fromARGB(255, 33, 134, 2),
                        ),
                        _transactionHistoryWith(
                          "From Ahmad Mudhal          +\$4 455.00            ",
                          Icons.arrow_downward,
                          const Color.fromARGB(255, 33, 134, 2),
                        ),
                        _transactionHistoryWith(
                          "From Ahmad Mudhal          -\$1 455.00             ",
                          Icons.send,
                          const Color.fromARGB(255, 209, 1, 1),
                        ),
                        _transactionHistoryWith(
                          "From Ahmad Mudhal          -\$455.00                ",
                          Icons.send,
                          const Color.fromARGB(255, 209, 1, 1),
                        ),
                        _transactionHistoryWith(
                          "From Ahmad Mudhal          -\$455.00                ",
                          Icons.send,
                          const Color.fromARGB(255, 209, 1, 1),
                        ),
                        _transactionHistoryWith(
                          "From Ahmad Mudhal          -\$455.00                ",
                          Icons.send,
                          const Color.fromARGB(255, 209, 1, 1),
                        ),
                        _transactionHistoryWith(
                          "From Ahmad Mudhal          -\$455.00                ",
                          Icons.send,
                          const Color.fromARGB(255, 209, 1, 1),
                        ),
                        _transactionHistoryWith(
                          "From Ahmad Mudhal          -\$455.00                ",
                          Icons.send,
                          const Color.fromARGB(255, 209, 1, 1),
                        ),
                        _transactionHistoryWith(
                          "From Ahmad Mudhal          -\$455.00                ",
                          Icons.send,
                          const Color.fromARGB(255, 209, 1, 1),
                        ),
                        _transactionHistoryWith(
                          "From Ahmad Mudhal          -\$455.00                ",
                          Icons.send,
                          const Color.fromARGB(255, 209, 1, 1),
                        ),
                        _transactionHistoryWith(
                          "From Ahmad Mudhal          -\$455.00                ",
                          Icons.send,
                          const Color.fromARGB(255, 209, 1, 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 18,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  border:
                      Border.all(color: const Color.fromARGB(255, 70, 68, 68)),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color:
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
              color: Colors.black,
            ),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.stacked_bar_chart,
              color: Colors.black,
            ),
            label: 'Analyz',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: 'Setting',
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 0, 0, 0),
        onTap: (int index) {
          // Tap bosilgan tugmani aniqlash
          if (index == 1) {
            // "Card" tugmasi bosilganda, ikkinchi sahifaga o'ting
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(), // Ikkinchi sahifa nomi
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildButtonWithIcon(String text, IconData icon, Color color) {
    return Column(
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          label: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: const BorderSide(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _transactionHistoryWith(String text, IconData icon, Color color) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(
              icon,
              color: color,
            ),
            label: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(248, 255, 255, 255),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side:
                    const BorderSide(color: Color.fromARGB(255, 255, 235, 235)),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
        centerTitle: true,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle,
                  size: 26,
                ),
              ),
              Text("add"),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Positioned(
              top: 20,
              left: 24.5,
              child: Container(
                width: 363,
                height: 218,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 169, 141),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 16,
                      left: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Allied Supreme Bank',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/1288452.webp',
                              // color: Colors.amber,
                              width: 80,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            '1234 5678 9012 3456\n02/25\n\nBehruz Ergashaliyev',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 363,
              height: 98,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 363,
              height: 98,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

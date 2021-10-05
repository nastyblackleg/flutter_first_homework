import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  num animal = 0;

  String getImage() {
    switch (animal) {
      case 1:
        return 'https://i.pinimg.com/originals/c9/6e/16/c96e161fe2f8aaac1457c8169e6eea56.jpg';
      case 2:
        return 'https://i.pinimg.com/originals/e5/d7/af/e5d7af4dfdaad0999ffc6274d54a271d.jpg';
      case 3:
        return 'https://innocentenglish.com/daily-break/cute-animals/cute-ducklings-sleeping.jpg';
      case 4:
        return 'https://lh3.googleusercontent.com/proxy/odbleuxNBg52VrjpJv-fNKNTrNzIQEBnUBVab4tEKOZireqyKUzIWDqUM7BcrMEKos7E-jotPi9wI1iSSZfMguCITCfgk2LvbLvN2DJeLLr0Im1hMgvnpUi3HMWFzwuLuc11Q9atTrH53s0';
      default:
        // default image
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animals'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (animal > 0 && animal < 5) Image.network(getImage()),
          if (animal == 0)
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Choose animal',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
                    onPressed: () {
                      setState(() {
                        animal = 1;
                      });
                    },
                    child: const Text('Animal 1'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
                    onPressed: () {
                      setState(() {
                        animal = 2;
                      });
                    },
                    child: const Text('Animal 2'),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
                    onPressed: () {
                      setState(() {
                        animal = 3;
                      });
                    },
                    child: const Text('Animal 3'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
                    onPressed: () {
                      setState(() {
                        animal = 4;
                      });
                    },
                    child: const Text('Animal 4'),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

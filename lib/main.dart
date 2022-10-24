import 'package:flutter/material.dart';
import 'package:misal_app/home_view.dart';

void main() {
  runApp((CounterApp()));
}

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}

// class CounterApp extends StatefulWidget {
//   const CounterApp({Key? key}) : super(key: key);

//   @override
//   State<CounterApp> createState() => _CounterAppState();
// }

// class _CounterAppState extends State<CounterApp> {
//   String aty = '';
//   String adress = '';
//   String adress1 = '';
//   String adress2 = '';

//   Okuuchu okuuchu = Okuuchu();
//   Adam adam = Adam();
//   @override
//   void initState() {
//     log('Adamdin aty... ${adam.aty}');
//     log('Okuuchunun aty ${okuuchu.aty = 'Kuba'}');
//     print('Adamdin aty... ${adam.aty}');
//     print('Okuuchunun aty ${okuuchu.aty = 'Kuba'}');
//     log('Okuuchunun jashy ${okuuchu.jashy}');
//     log('Okuuchunun  baasy ${okuuchu.baasy}');

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(body: Container()),
//     );
//   }
// }

// class Adam {
//   String aty = '15';
//   int jashy = 12;
// }

// class Okuuchu extends Adam {
//   int baasy = 5;
// }

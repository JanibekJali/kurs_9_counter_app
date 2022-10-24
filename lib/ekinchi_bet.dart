import 'package:flutter/material.dart';

class EkinchiBet extends StatelessWidget {
  const EkinchiBet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xffBDBDBD),
            borderRadius: BorderRadius.all(Radius.circular(12.0) //
                ),
          ),
          width: 294,
          child: Center(
            child: Text(
              'San: ',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:misal_app/ekinchi_bet.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int san = 20;
  String text = 'Abdulaziz';

  void koshuu() {
    setState(() {
      san = san + 1;
      // text++;
    });
  }

  void kemituu() {
    setState(() {});
    san--;
  }

  void ozgort(bool ozgoruunuBer) {
    if (ozgoruunuBer == true) {
      setState(() {});
      san++;
    } else {
      san--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Counter App',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xffBDBDBD),
                borderRadius: BorderRadius.all(Radius.circular(12.0) //
                    ),
              ),
              width: 294,
              child: Center(
                child: Text(
                  'San: $san',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  focusColor: Colors.yellow,
                  hoverColor: Colors.yellow,
                  onTap: kemituu,
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Color(0XFF005EA6),
                      color: Colors.pink,
                      borderRadius: BorderRadius.all(Radius.circular(8.0) //
                          ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Center(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 00),
                          child: Icon(
                            Icons.remove,
                            color: Color(0xffffffff),
                            size: 40,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: koshuu,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFF005EA6),
                      borderRadius: BorderRadius.all(Radius.circular(8.0) //
                          ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Center(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 00),
                          child: Icon(
                            Icons.add,
                            color: Color(0xffffffff),
                            size: 40,
                          )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EkinchiBet(),
                  ),
                );
              },
              child: Icon(
                Icons.navigate_next,
                size: 45,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
              children: <Widget>[

                Transform.translate(
                  offset: Offset(0.0, 110.0),
                  child:
                  // Adobe XD layer: 'logo' (shape)
                  Container(
                    width: 185.4,
                    height: 255.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/logo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-20, 180.0),
                  child: SizedBox(
                    width: 286.0,
                    child: Text(
                      'ENTER PRODUCT KEY',
                      style: TextStyle(
                        fontFamily: 'Noto Sans',
                        fontSize: 17,
                        color: const Color(0xff84a0a0),
                        letterSpacing: 4.25,
                        height: 0.8823529411764706,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(125, 159.0),
                  child: Container(
                    width: 25.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffe4a3ab),
                      border: Border.all(width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(125, 141.0),
                  child: SizedBox(
                    width: 19.0,
                    child: Text(
                      '?',
                      style: TextStyle(
                        fontFamily: 'Arial Rounded MT',
                        fontSize: 17,
                        color: const Color(0xff000000),
                        letterSpacing: 4.25,
                        fontWeight: FontWeight.w700,
                        height: 0.8823529411764706,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.0, 200.0),
                  child: SizedBox(
                    width: 300.0,
                    child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ),
                ),
              ]
          ),
        ),
    );
  }
}

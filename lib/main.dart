import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi foto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'App - Foto'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[300],
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60, 30, 60, 30),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange[50],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFFD17846),
                      width: 6,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'EVELYN MARISOL ESTRADA GALLEGOS',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 4,
                indent: 100,
                endIndent: 100,
                color: Color(0xFFC24D4D),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(120, 0, 120, 0),
                child: Container(
                  width: 100,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://github.com/EvelynMEstradaG-6J/Eje_GridView_6J_A/blob/master/assets/images/XDD.jpg?raw=true',
                          width: 130,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 4,
                indent: 100,
                endIndent: 100,
                color: Color(0xFFC24D4D),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60, 30, 60, 30),
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange[50],
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Color(0xFFD17846),
                      width: 6,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '6J - PROGRAMACION',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ), //BodySafeArea
    );
  }
}

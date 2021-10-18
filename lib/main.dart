import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Random'),
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


  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    var titleTextStyle = TextStyle(fontFamily: "Roboto Bold", fontSize: 35, color: Colors.lightGreen);
    var cardTextStyle = TextStyle(fontFamily: "Roboto Mono", fontSize: 15, color: Colors.lightGreen);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, textAlign: TextAlign.center),
      ),
      body: Column(
        children: <Widget>[
          /*Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              image: DecorationImage(
                image: AssetImage("assets/images/coin.png"),
              ),
            ),
          )*/
          SizedBox(height: 20),
          Text("Elige una opción", style: titleTextStyle),
          SizedBox(height: 30),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            padding: const EdgeInsets.all(20),
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            primary: false,
            children: <Widget>[
              GestureDetector(
                onTap: () => showToast("Esta funcionalidad no está disponible"),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image(image: AssetImage("assets/images/coin.png"), height: 80),
                      Text("Lanzar Moneda", style: cardTextStyle),
                    ],
                  ),

                ),
              ),

              GestureDetector(
                onTap: () => showToast("Esta funcionalidad no está disponible"),
                child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image(image: AssetImage("assets/images/dice.png"), height: 80),
                    Text("Dado 6 caras", style: cardTextStyle),
                  ],
                ),

              ),
              ),
              GestureDetector(
                onTap: () => showToast("Esta funcionalidad no está disponible"),
                child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image(image: AssetImage("assets/images/10.png"), height: 80),
                    Text("Numero 1 al 10", style: cardTextStyle),
                  ],
                ),

              ),
              ),
              GestureDetector(
                onTap: () => showToast("Esta funcionalidad no está disponible"),
                child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image(image: AssetImage("assets/images/arrows.png"), height: 80),
                    Text("Izquierda Derecha", style: cardTextStyle),
                  ],
                ),

              ),
              ),
              GestureDetector(
                onTap: () => showToast("Esta funcionalidad no está disponible"),
                child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image(image: AssetImage("assets/images/color.png"), height: 80),
                    Text("Color", style: cardTextStyle),
                  ],
                ),

              ),
              ),
              GestureDetector(
                onTap: () => showToast("Esta funcionalidad no está disponible"),
                child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image(image: AssetImage("assets/images/controller.png"), height: 80),
                    Text("Personalizado", style: cardTextStyle),
                  ],
                ),

              ),
              ),

            ],
          )
        ],
      ),
      /*floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), */ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  void showToast(String msj){
    Fluttertoast.showToast(
        msg: msj,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int state = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bugatti Veyron"),
      ),
      body: Center(
        child: Stack(children: [
          Container(
              height: double.infinity,
              child: Column(
                children: [
                  Container(
                      width: double.infinity,
                      height: 200,
                      child: Image.asset(
                        'asset/img/1.jpg',
                        fit: BoxFit.cover,
                      )),
                  Container(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          Container(
                              width: 110,
                              height: 110,
                              padding: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'asset/img/2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                              width: 110,
                              height: 110,
                              padding: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'asset/img/3.jpg',
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                              width: 110,
                              height: 110,
                              padding: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'asset/img/4.jpg',
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                              width: 110,
                              height: 110,
                              padding: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'asset/img/5.jpg',
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Container(
                              width: 110,
                              height: 110,
                              padding: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'asset/img/6.jpg',
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ]),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("Bugatti Veyron",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white)),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "The Bugatti Veyron EB 16.4 is a mid-engine sports car, designed and developed in Germany by the Volkswagen Group and Bugatti and manufactured in Molsheim, France, by French automobile manufacturer Bugatti. It was named after the racing driver Pierre Veyron.\n\nThe original version has a top speed of 407 km/h (253 mph). It was named the 2000s Car of the Decade by the BBC television programme Top Gear. The standard Veyron also won Top Gear's Best Car Driven All Year award in 2005.\n\nThe Super Sport version of the Veyron is one of the fastest street-legal production cars in the world, with a top speed of 431.072 km/h (267.856 mph).[8] The Veyron Grand Sport Vitesse was the fastest roadster in the world, reaching an averaged top speed of 408.84 km/h (254.04 mph) in a test on 6 April 2013.\n\nThe Veyron's chief designer was Hartmut Warkuß and the exterior was designed by Jozef Kabaň of Volkswagen, with much of the engineering work being conducted under the guidance of chief technical officer Wolfgang Schreiber. The Veyron includes a sound system designed and built by Burmester Audiosysteme.\n\nSeveral special variants have been produced. In December 2010, Bugatti began offering prospective buyers the ability to customise exterior and interior colours by using the Veyron 16.4 Configurator application on the marque's official website. The Bugatti Veyron was discontinued in late 2014, but special edition models continued to be produced until 2015.",
                                  style: TextStyle(color: Colors.white)),
                            )
                          ],
                        )),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue,
                  Colors.black,
                ],
              ))),
          // ElevatedButton(
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(right: 15.0, top: 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (state == 0) {
                        state = 1;
                      } else {
                        state = 0;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: state == 0 ? Colors.grey : Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  )),
            ),
          ])
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 8,bottom: 10),
            child: Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 5
                    )
                  ]
              ),
              child: Center(
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(
                      Icons.arrow_back
                  ),
                ),
              ),
            ),
          ),
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Text(
                    "Search Food",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset(
                        "assets/profile2.png",
                      ),
                    ),
                  ),
                )
              ]
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 25,right: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color:  Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            prefixIcon: Container(
                              margin: const EdgeInsets.only(left: 20),
                              alignment: Alignment.centerLeft,
                              width: 30,
                              child: Icon(Icons.search,color: Colors.black,),
                            ),
                            hintText: "Spice Food",
                            hintStyle: TextStyle(
                              fontSize: 19,
                              color: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow[700],
                          borderRadius: BorderRadius.circular(7)
                        ),
                        width: 50,
                        height: 50,
                        child: Icon(Icons.tune),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,top: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 65.0),
                                    child: Text(
                                      textAlign: TextAlign.start,
                                      "Found",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 30,left: 8.0),
                                    child: Text(
                                      "80 results",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        height: 250,
                                        width: 150,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 5,
                                      left: 23,
                                      right: 2,
                                      child: Container(
                                        height: 190,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(9),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey.withOpacity(0.1),
                                                  spreadRadius: 10,
                                                  blurRadius: 6
                                              )
                                            ]
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 40.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8,bottom: 5),
                                                child: Center(
                                                  child: Text(
                                                    "Oni Sandwich",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 15
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: Text(
                                                  "Spicy chicken sandwich",
                                                  style: TextStyle(
                                                    fontSize: 9,
                                                    color: Colors.grey
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Image.asset("assets/hot-icon.png",height: 17,width: 17,),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 8.0),
                                                      child: Text(
                                                        "69 Calories",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.orange[800]
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '₹',
                                                    textAlign: TextAlign.end,
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.orange[800]
                                                    ),
                                                  ),
                                                  Text(
                                                    '120',
                                                    textAlign: TextAlign.end,
                                                    style: TextStyle(
                                                        fontSize: 27,
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.black
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ),
                                    Positioned(
                                      left: 30,
                                      child: Container(
                                        height: 130,
                                        width: 130,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(130),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(0.1),
                                              spreadRadius: 1,
                                              blurRadius: 3
                                            )
                                          ]
                                        ),
                                        child: Image.asset(
                                          "assets/oni-sandwich.png",
                                          fit: BoxFit.cover,
                                          height: 130,
                                        )
                                      )
                                    )
                                  ],
                                ),
                                const SizedBox(height: 20,),
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        height: 250,
                                        width: 150,
                                      ),
                                    ),
                                    Positioned(
                                        bottom: 5,
                                        left: 23,
                                        right: 2,
                                        child: Container(
                                          height: 190,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(9),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey.withOpacity(0.1),
                                                    spreadRadius: 10,
                                                    blurRadius: 6
                                                )
                                              ]
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 40.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8,bottom: 5),
                                                  child: Center(
                                                    child: Text(
                                                      "Egg Pasta",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.w700,
                                                          fontSize: 15
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Center(
                                                  child: Text(
                                                    "Spicy Egg Pasta",
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.grey
                                                    ),
                                                  ),
                                                ),
                                                Center(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Image.asset("assets/hot-icon.png",height: 17,width: 17,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 8.0),
                                                        child: Text(
                                                          "50 Calories",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.orange[800]
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      '₹',
                                                      textAlign: TextAlign.end,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.orange[800]
                                                      ),
                                                    ),
                                                    Text(
                                                      '120',
                                                      textAlign: TextAlign.end,
                                                      style: TextStyle(
                                                          fontSize: 27,
                                                          fontWeight: FontWeight.w500,
                                                          color: Colors.black
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                    ),
                                    Positioned(
                                        left: 30,
                                        child: Container(
                                            height: 130,
                                            width: 130,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(130),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black.withOpacity(0.1),
                                                      spreadRadius: 1,
                                                      blurRadius: 3
                                                  )
                                                ]
                                            ),
                                            child: Image.asset(
                                              "assets/egg pasta.png",
                                              fit: BoxFit.cover,
                                              height: 130,
                                            )
                                        )
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 20),
                                    height: 250,
                                    width: 150,
                                  ),
                                ),
                                Positioned(
                                    bottom: 5,
                                    left: 23,
                                    right: 2,
                                    child: Container(
                                      height: 190,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(9),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.withOpacity(0.1),
                                                spreadRadius: 10,
                                                blurRadius: 6
                                            )
                                          ]
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 40.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8,bottom: 5),
                                              child: Center(
                                                child: Text(
                                                  "Don Noodles",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 15
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Text(
                                                "Spicy Veg noodles",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    color: Colors.grey
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Image.asset("assets/hot-icon.png",height: 17,width: 17,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 8.0),
                                                    child: Text(
                                                      "120 Calories",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.orange[800]
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '₹',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.orange[800]
                                                  ),
                                                ),
                                                Text(
                                                  '150',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 27,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                ),
                                Positioned(
                                    left: 30,
                                    child: Container(
                                        height: 130,
                                        width: 130,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(130),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black.withOpacity(0.1),
                                                  spreadRadius: 1,
                                                  blurRadius: 3
                                              )
                                            ]
                                        ),
                                        child: Image.asset(
                                          "assets/pngegg.png",
                                          fit: BoxFit.fill,
                                          height: 200,
                                        )
                                    )
                                )
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 20),
                                    height: 250,
                                    width: 150,
                                  ),
                                ),
                                Positioned(
                                    bottom: 5,
                                    left: 23,
                                    right: 2,
                                    child: Container(
                                      height: 190,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(9),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.withOpacity(0.1),
                                                spreadRadius: 10,
                                                blurRadius: 6
                                            )
                                          ]
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 40.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8,bottom: 5),
                                              child: Center(
                                                child: Text(
                                                  "Chicken Dimsum",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 15
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Text(
                                                "Spicy chicken Dimsum",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    color: Colors.grey
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Image.asset("assets/hot-icon.png",height: 17,width: 17,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 8.0),
                                                    child: Text(
                                                      "48 Calories",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.orange[800]
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '₹',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.orange[800]
                                                  ),
                                                ),
                                                Text(
                                                  '160',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 27,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                ),
                                Positioned(
                                    left: 30,
                                    child: Container(
                                        height: 130,
                                        width: 130,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(130),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black.withOpacity(0.1),
                                                  spreadRadius: 1,
                                                  blurRadius: 3
                                              )
                                            ]
                                        ),
                                        child: Image.asset(
                                          "assets/oni-sandwich.png",
                                          fit: BoxFit.cover,
                                          height: 130,
                                        )
                                    )
                                )
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 20),
                                    height: 250,
                                    width: 150,
                                  ),
                                ),
                                Positioned(
                                    bottom: 5,
                                    left: 23,
                                    right: 2,
                                    child: Container(
                                      height: 190,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(9),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.withOpacity(0.1),
                                                spreadRadius: 10,
                                                blurRadius: 6
                                            )
                                          ]
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 40.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8,bottom: 5),
                                              child: Center(
                                                child: Text(
                                                  "Oni Sandwich",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 15
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Text(
                                                "Spicy chicken sandwich",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    color: Colors.grey
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Image.asset("assets/hot-icon.png",height: 17,width: 17,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 8.0),
                                                    child: Text(
                                                      "69 Calories",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.orange[800]
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '₹',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.orange[800]
                                                  ),
                                                ),
                                                Text(
                                                  '120',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontSize: 27,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.black
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                ),
                                Positioned(
                                    left: 30,
                                    child: Container(
                                        height: 130,
                                        width: 130,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(130),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black.withOpacity(0.1),
                                                  spreadRadius: 1,
                                                  blurRadius: 3
                                              )
                                            ]
                                        ),
                                        child: Image.asset(
                                          "assets/oni-sandwich.png",
                                          fit: BoxFit.cover,
                                          height: 130,
                                        )
                                    )
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

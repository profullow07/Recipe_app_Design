import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/Screen/Firstscreen.dart';

void main() {
  runApp(Myhome());
}

class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.pinkAccent,
        title: Text(
          "Tasty Recipe",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/profullow.jpg"),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white24,
          child: ListView(
            children: [
              DrawerHeader(
                child: UserAccountsDrawerHeader(
                  accountName: Text("Profullow"),
                  accountEmail: Text("profullowonline121@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    radius: 30,
                    child: Image.asset("assets/profullow.jpg"),
                  ),
                  currentAccountPictureSize: Size.square(50),
                ),
              ),
              ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text(
                  "Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.green,
                  ),
                ),
                leading: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
              ),
              ListTile(
                title: Text(
                  "Balance",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                ),
                leading: Icon(
                  Icons.money,
                  color: Colors.blue,
                ),
              ),
              Divider(
                thickness: 5,
                height: 20,
              ),
              ListTile(
                title: Text(
                  "Setting",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.red,
                ),
              ),
              ListTile(
                title: Text(
                  "Help Us",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 25,
                  ),
                ),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
              ListTile(
                title: Text(
                  "Logout",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 25,
                  ),
                ),
                leading: Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/banner.jpg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Trending Recipes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.redAccent,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              },
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                          ),
                        ]),
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(160.0, 10.0, 10.0, 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 120.0,
                                child: Text(
                                  "Tasty - Food videos and recipes",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.favorite_border,
                                color: Colors.pink,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("⭐⭐⭐⭐"),
                          SizedBox(
                            width: 10.0,
                          ),
                          Row(
                            children: [
                              Text(
                                "45 min",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.timer,
                                color: Colors.black,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5.0,
                    left: 18.0,
                    bottom: 5.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        "assets/bergur.jpg",
                        width: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                  height: 150.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(160.0, 10.0, 10.0, 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 120.0,
                              child: Text(
                                "Tasty - Food videos and recipes",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text("⭐⭐⭐⭐"),
                        SizedBox(
                          width: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "45 min",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.timer,
                              color: Colors.black,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 5.0,
                  left: 18.0,
                  bottom: 5.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "assets/banner.jpg",
                      width: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  height: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(160.0, 10.0, 10.0, 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 120.0,
                              child: Text(
                                "Simply Recipes - Less Stress",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.favorite_border_sharp,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("⭐⭐⭐⭐"),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text("45 min"),
                            Icon(Icons.timer),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 5.0,
                  left: 18.0,
                  bottom: 5.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "assets/lodur.jpg",
                      width: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  height: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 10.0),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                      160.0,
                      10.0,
                      10.0,
                      20.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 120.0,
                              child: Text(
                                "Bangali style Beef egg",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ],
                        ),
                        Text("⭐⭐⭐⭐"),
                        Row(
                          children: [
                            Text("30 min"),
                            Icon(Icons.timer),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 5.0,
                  left: 18.0,
                  bottom: 5.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      "assets/lodus.jpg",
                      width: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  child: Container(
                    height: 150.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                          ),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 70.0,
                              width: 70.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 10.0,
                                    ),
                                  ]),
                              child: CircleAvatar(
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Image.asset("assets/profullow.jpg")),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Dsign by Profullow",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.red,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

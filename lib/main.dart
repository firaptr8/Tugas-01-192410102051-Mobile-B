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
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List names = [
    'Liam Jessaiyah',
    'Noah Van Allardo',
    'Oliver Mega Noelish',
    'William Ezekiel',
    'Elijah Narashi',
    'James Mitchell',
    'Benjamin Faresha',
    'Lucas Wong',
    'Mason Jendaya',
    'Ethan Mikoren',
    'Alexander Monroe'
  ];
  List number = [
    '089732649372',
    '085873459333',
    '081368492457',
    '082731541934',
    '085735432935',
    '088239864537',
    '081837259832',
    '085832591417',
    '089923647234',
    '082763417341'
  ];
  List email = [
    'liamjess@gmail.com',
    'noahallard@gmail.com',
    'olivermega@gmail.com',
    'williamkiel@gmail.com',
    'elijahnarash@gmail.com',
    'jamesmitchell@gmail.com',
    'benjaminfaresh@gmail.com',
    'lucaswong@gmail.com',
    'masondaya@gmail.com',
    'ethanmiko@gmail.com',
    'alexandermon@gmail.com'
  ];
  @override
  Widget build(BuildContext context) {
    names.sort();
    email.sort();
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 55.0,
                              height: 55.0,
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.green,
                                backgroundImage: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_960_720.png"),
                              ),
                            ),
                            SizedBox(width: 6.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(names[index],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 5.0),
                                Text(number[index],
                                    style: TextStyle(color: Colors.grey)),
                                SizedBox(height: 5.0),
                                Text(email[index],
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}

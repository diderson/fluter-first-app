import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget> [
            Text("Hello"),
            _getCard(),
            _getAvatar()
          ],
        ),
      ),
    );
  }
  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(4.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Text("Diderson Baka"),
          Text("This is a text acting like a paragraph"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text("T: @diderson")
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: Colors.redAccent, width: 1.2),
          image: DecorationImage(image: NetworkImage("https://picsum.photos/300/300"),
          fit: BoxFit.cover)
      ),
    );
  }
}


class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  _tappedButton() {
    debugPrint("Button function tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Didi Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: <Widget> [
          IconButton(onPressed: () => debugPrint("Email Tapped"), icon: Icon(Icons.mail)),
          IconButton(onPressed: _tappedButton, icon: Icon(Icons.alarm)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.call_missed),
        onPressed: () => debugPrint("float pressed"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "First"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Second"),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: "Third")
        ], onTap: (int index) => debugPrint("Tapped item: $index"),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton()
            // InkWell(
            //   child: Text("Tap me!",
            //   style: TextStyle(fontSize: 24.4),
            //   ),
            //   onTap: () => debugPrint("tapped"),
            // )
          ],

        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: Text("Hi Didi Again"),
        backgroundColor: Colors.amberAccent.shade700,
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Text("Button"),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepOrange,
      child: Center(
        child: Text(
          "Hello Didi Baka Flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 23.4,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
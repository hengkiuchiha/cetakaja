import 'package:flutter/material.dart';
import 'package:cetakwae/daftar.dart';
import 'package:cetakwae/Beranda/beranda_view.dart';


class LandingPage extends StatefulWidget {

  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*2.5/7,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff2962ff), Color(0xff2962ff)],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 50.0),
            width: 340,
            height: 700,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    color: Colors.transparent.withOpacity(.3),
                    spreadRadius: 5.0,
                  ),
                ] ),
            padding: EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      _titleDescription(),
                      _iconLogin(),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      _textField(),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      _buildButton(context),
                    ],
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }

  Widget _titleDescription() {
    return Column(
      children: <Widget>[
        Text(
          "Silakan Login",
          style: TextStyle(color: Colors.black54,
            fontSize: 16.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 13.0),
        ),
      ],
    );
  }

  Widget _iconLogin() {
    return Image.asset(
      "assets/image/cetak_aja.png",
      width: 100.0,
      height: 100.0,
    );
  }


  Widget _textField() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),

        TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.account_circle),
            labelText: 'Username',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            labelText: 'Password',
          ),
          obscureText: true,
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () {
              Navigator.pushReplacement (context,
                  MaterialPageRoute(builder: (context) {
                    return BerandaPage();
                  }));},
            padding: EdgeInsets.all(12),
            color: Colors.blueAccent[700],
            child: Text('Log In', style: TextStyle(color: Colors.white)),
          ),
        ),

        Text(
          'atau',
          style: TextStyle(color: Colors.black54,
            fontSize: 12.0,
          ),
        ),
        FlatButton(
          child: Text(
            'Daftar',
            style: TextStyle(color: Colors.black54),
          ),
          onPressed: () {
            Navigator.push (context,
                MaterialPageRoute(builder: (context) {
                  return Daftar();
                }));
          },
        ),
      ],
    );

  }
}
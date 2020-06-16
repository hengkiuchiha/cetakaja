import 'package:flutter/material.dart';
import 'package:cetakwae/landing/landingpage_view.dart';
import 'package:cetakwae/Beranda/beranda_view.dart';

class Profil extends StatelessWidget {
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
            height: 800,
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
                      _iconDaftar(),
                      _textField(),
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

  Widget _iconDaftar() {
    return Image.asset(
      "assets/image/profil.png",
      width: 65.0,
      height: 130.0,
    );
  }


  Widget _textField() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
        ),

        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            labelText: 'Nama Pengguna',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            labelText: 'Jenis kelamin',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            labelText: 'Email',
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            labelText: 'Alamat',
          ),
          obscureText: true,
        ),

        Padding(
          padding: EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            labelText: 'No telepon',
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
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {
              Navigator.pushReplacement (context,
                  MaterialPageRoute(builder: (context) {
                    return BerandaPage();
                  }));
            },
            padding: EdgeInsets.all(12),
            color: Colors.blueAccent[700],
            child: Text('Simpan', style: TextStyle(color: Colors.white)),
          ),
        ),


          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {
              Navigator.pop (context);
            },
            padding: EdgeInsets.all(12),
            color: Colors.blueAccent[700],
            child: Text('Batal', style: TextStyle(color: Colors.white)),
          ),


      ],
    );

  }

}
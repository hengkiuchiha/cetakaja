import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cetakwae/beranda/beranda_model.dart';
import 'package:cetakwae/profil.dart';
import 'package:cetakwae/diskon.dart';
import 'package:cetakwae/cetak.dart';
import 'package:cetakwae/status.dart';
import 'package:cetakwae/landing/landingpage_view.dart';

class BerandaPage extends StatefulWidget {

  @override
  _BerandaPageState createState() => new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          children: <Widget>[
            Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*1.9/7,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff2962ff), Color(0xff2962ff)],
              ),
            ),
          ),

      Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  _titleDescription(),
                  _buildSearch(),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                  ),
                  _buildCetakMenu(),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  _buildMenu(),
                  Padding(
                    padding: EdgeInsets.only(top: 70.0),
                  ),
                  _buildButton(context),

                  ],
                ),
              ),
            ],
          ),
         ),

       ]
      ),
    );

  }

  Widget _titleDescription(){
    return Column(
      children: <Widget>[
        Text(
          "Selamat Datang !",
          style: TextStyle(color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 13.0),
        ),
      ],
    );
  }

  Widget _buildSearch() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),

        TextFormField(

          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(Icons.search),
            labelText: 'Cari Percetakan',

            border: OutlineInputBorder(borderRadius: BorderRadius.circular(60.0)),
            suffixIcon: Icon(Icons.pin_drop),

          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),

      ],
    );
  }


  Widget _buildCetakMenu (){
    return Row(
    children: <Widget> [
      Padding(
        padding: EdgeInsets.only(top:20.0 ,left: 13.0, right: 13.0),
      ),
      new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [

          new IconButton(icon: Icon(Icons.print),color: Colors.blueAccent[700],iconSize: 80.0,
            onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) {
                return Cetak();
              }));},
          ),
          new Text('Pesan Pencetakan'),
        ],
      ),
      Padding(
        padding: EdgeInsets.only(top:20.0 ,left: 45.0,),
      ),
      new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [

          new IconButton(icon: Icon(Icons.library_books),color: Colors.blueAccent[700],iconSize: 80.0,
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) {
                return Status();
              }));},
          ),
          new Text('Status Pesanan'),
        ],
      ),
    ],
    );
  }


  Widget _buildMenu (){
    return Row(
      children: <Widget> [
        Padding(
          padding: EdgeInsets.only(left: 19.0, right: 15.0),
        ),
        new Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [

            new IconButton(icon: Icon(Icons.label),color: Colors.blueAccent[700],iconSize: 80.0,
              onPressed: (){
                Navigator.push (context,MaterialPageRoute(builder: (context) {
                  return Diskon();
                }));},
            ),
            new Text('Diskon'),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 60.0),
        ),
        new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            new IconButton(icon: Icon(Icons.account_circle),color: Colors.blueAccent[700],iconSize: 80.0,
              onPressed: (){
                Navigator.push (context,MaterialPageRoute(builder: (context) {
                  return Profil();
                }));},
            ),
            new Text('Profil'),
          ],
        ),
      ],
    );
  }

  Widget _rowMenuService(MenuService menuService) {
    return new Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.0),
              borderRadius:
              new BorderRadius.all(new Radius.circular(20.0))),
          padding: EdgeInsets.all(12.0),

        ),

      ],
    );

  }



  Widget _buildButton(BuildContext context){
    return Column(
      children: <Widget>[
        Padding(

          padding: EdgeInsets.fromLTRB(12.0, 24.0, 12.0, 8.0),
          child: FlatButton (
            color: Colors.grey,
            child: Text('Infomasi Fitur, Diskon dan Promo Terbaru, Notifikasi Pesanan',
            style: TextStyle(color: Colors.white
                )
              ),
            padding: EdgeInsets.all(30.0),
            onPressed: (){},
          ),

        ),
      ],
    );
  }

}
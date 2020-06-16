import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Diskon extends StatefulWidget {

  @override
  _DiskonState createState() => new _DiskonState();
}

class _DiskonState extends State<Diskon> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.26/7,
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
                        _buildKembali(),
                        _titleDescription(),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                        ),
                        _buildCetakMenu(),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                        ),
                        _buildMenu(),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                        ),
                        _buildButton(context),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                        ),
                        _buildBtm()

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

  Widget _buildKembali(){
    return Row(
      children: <Widget>[

        IconButton(
          alignment: Alignment.topLeft,
          onPressed:()=> Navigator.pop(context),
          icon: Icon(Icons.arrow_back,
            color: Colors.black87,
            size: 25,),
        ),
      ],
    );
  }

  Widget _titleDescription(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Diskon & Promo ",
          style: TextStyle(color: Colors.black87,
            fontSize: 16.0,
          ),
        ),
        Icon(Icons.label, color: Colors.blueAccent[700]),

      ],
    );
  }

  Widget _buildBtm() {
    return Column(
      children: <Widget>[
        ButtonTheme(

          minWidth: 40.0,
          height: 100.0,
          child: FlatButton (

            color: Colors.blueAccent[700],
            child: Text('Potongan   35%',
                style: TextStyle(color: Colors.white
                )
            ),
            onPressed: (){print("Diskon Dipilih");},
          ),
        ),

      ],
    );
  }


  Widget _buildCetakMenu (){
    return Row(
      children: <Widget> [

        new Column(
          children: <Widget> [
            ButtonTheme(
              minWidth: 40.0,
              height: 100.0,
            child: FlatButton (
              color: Colors.blueAccent[700],
              child: Text('Potongan   50%',
                  style: TextStyle(color: Colors.white
                  )
              ),
              onPressed: (){print("Diskon Dipilih");},
            ),
          )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 50.0,),
        ),
        new Column(
          children: <Widget> [
             ButtonTheme(
               minWidth: 60.0,
               height: 100.0,
                  child:  FlatButton (
                   color: Colors.blueAccent[700],
                     child: Text('Potongan   30%',
                    style: TextStyle(color: Colors.white
                    )
                ),
                onPressed: (){print("Diskon Dipilih");},
              ),
             )

          ],
        ),
      ],
    );
  }


  Widget _buildMenu (){
    return Column(
      children: <Widget> [
        ButtonTheme(
          minWidth: 360.0,
          height: 110.0,
          child: FlatButton (
            color: Colors.blueAccent[700],
            child: Text('Cetak 5 gratis 1',
                style: TextStyle(color: Colors.white, fontSize: 30
                )
            ),
            onPressed: (){print("Diskon Dipilih");},
          ),
        )
      ],
    );
  }

  Widget _buildButton(BuildContext context){
    return Column(
      children: <Widget>[
        ButtonTheme(
          minWidth: 360.0,
          height: 110.0,
           child: FlatButton (
            color: Colors.blueAccent[700],
            child: Text('     Cetak Sekarang Hanya Rp 25.000',
                style: TextStyle(color: Colors.white, fontSize: 30
                )
                ),
              onPressed: (){print("Diskon Dipilih");},
             ),
        ),
      ],
    );
  }

}
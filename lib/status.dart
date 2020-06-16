import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class Status extends StatefulWidget {

  @override
  _StatusState createState() => new _StatusState();
}

class _StatusState extends State<Status> {
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
                          padding: EdgeInsets.only(top: 40.0),
                        ),

                        _buildTable(),

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
          "Status Pesanan ",
          style: TextStyle(color: Colors.black87,
            fontSize: 16.0,
          ),
        ),
        Icon(Icons.library_books, color: Colors.blueAccent[700]),

      ],
    );
  }



  Widget _buildTable (){
    return Row(

      children: <Widget>[

        Expanded(
          flex: 2,
          child: Container(color: Colors.grey[300],
          height: 400,
          child: Text("Tanggal"),
          ),
        ),

        Expanded(
          flex: 3,
           child: Container(color: Colors.grey[200],
            height: 400,
            child: Text("File"),
          ),
        ),

        Expanded(
          flex: 2,
          child: Container(color: Colors.grey[300],
            height: 400,
            child: Text("Status"),
          ),
        ),

      ],
    );
  }






}



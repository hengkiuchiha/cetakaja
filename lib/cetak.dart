import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Cetak extends StatefulWidget {

  @override
  _CetakState createState() => new _CetakState();
}

class _CetakState extends State<Cetak> {
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
          "Pesan Pencetakan ",
            style: TextStyle(color: Colors.black87,
            fontSize: 16.0,
              ),
        ),
        Icon(Icons.print, color: Colors.blueAccent[700]),

      ],
    );
  }

        Widget _buildCetakMenu (){
          return Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Jumlah Halaman:',
                  border: OutlineInputBorder(),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0),
              ),

              TextField(
                decoration: InputDecoration(
                  labelText: 'Banyak Rangkap:',
                  border: OutlineInputBorder(),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Text("Silahkan Upload File:"
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Text("( pdf, docs, xlsx, pptx )"
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),

              TextField(
                decoration: InputDecoration(
                  icon: IconButton(
                    onPressed:(){},
                    icon: Icon(Icons.file_upload,
                      color: Colors.blueAccent[700],
                      size: 25,),),
                      border: OutlineInputBorder(),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Text("Layanan Antar :"
                ),
              ),

              DropDownField(
                controller: choiceSelected,
                hintText: "Layanan Antar",
                enabled: true,
                items: choice,
                onValueChanged: (value){
                  setState(() {
                    selectChoice = value;
                  });
                },
              )



            ],
          );
        }


  Widget _buildMenu (){
    return Column(
      children: <Widget> [
        TextField(
          decoration: InputDecoration(
            labelText: 'Total Biaya:',
            border: OutlineInputBorder(),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),

        Align(
          alignment: Alignment.centerLeft,
          child: Text("Pilih Percetakan :"
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 5.0),
        ),

        TextFormField(
            decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(Icons.search),
            hintText: 'Cari Percetakan',

            border: OutlineInputBorder(borderRadius: BorderRadius.circular(60.0)),
            suffixIcon: Icon(Icons.pin_drop),

          ),
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context){
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomRight,
         child: FloatingActionButton(

            onPressed: (){Navigator.pop (context);},
            child: Icon(Icons.add),
          ),
        ),
        ],
      );
  }

}

String selectChoice = "";

final choiceSelected = TextEditingController();

List<String> choice =[
  "Ya",
  "Tidak"
];


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class egitim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('EĞITIM FALI'),
        ),
        body: egitimm());
  }
}

class egitimm extends StatefulWidget {
  @override
  egitimmState createState() => egitimmState();
}

class egitimmState extends State<egitimm> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("konular")
        .doc('eğitim').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['eğitim'];
      });
    }
    );
  }

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          FloatingActionButton
            (child: Icon(Icons.add),
              onPressed: ()
              {
                yazigetir();
              }

          ),

          Column(
            children: [
              Text(gelenyazi.toString(),style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )],
          )
        ],
      ),
    );
  }
}
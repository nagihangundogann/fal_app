import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class kariyer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('KARIYER FALI'),
        ),
        body: kariyerr());
  }
}

class kariyerr extends StatefulWidget {
  @override
  kariyerrState createState() => kariyerrState();
}

class kariyerrState extends State<kariyerr> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("konular")
        .doc('kariyer').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['kariyer'];
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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class ask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('AŞK FALI'),
        ),
        body: askk());
  }
}

class askk extends StatefulWidget {
  @override
  askkState createState() => askkState();
}

class askkState extends State<askk> {
  var gelenyazi="";


  yazigetir() {
    FirebaseFirestore.instance.collection("konular")
        .doc('aşk').get().then((gelen) {
      setState(() {
        gelenyazi = gelen.data()['aşk'];
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
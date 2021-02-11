import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return HomeWidget();
  }
}

class HomeWidget extends StatefulWidget{
  @override
  HomeWidgetState createState()=>HomeWidgetState();
}

class HomeWidgetState extends State<HomeWidget> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          backgroundColor: Colors.purple[50],
          appBar: AppBar(
            backgroundColor: Colors.red[100],
            title: Column(
              children: [
                Container(
                  margin: new EdgeInsets.only(top: 7),
                  child: Text(
                    'jUNE bERRY',
                    style: TextStyle(
                        wordSpacing: 2.0,
                        letterSpacing: 2.0,
                        fontSize: 14.0,
                        color: Colors.black87,
                    ),
                  ),
                ),
                Text(
                  '\t\t...dressings',
                  style: TextStyle(
                      wordSpacing: 1.0,
                      letterSpacing: 1.0,
                      fontSize: 8.0,
                      color: Colors.black26,
                  ),
                ),
              ],
            ),
            leading: FlatButton(
              color: Colors.red[100],
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
              child: Icon(
                Icons.account_box_rounded,
                color: Colors.white,
              ),
            ),
            actions: [

              FlatButton(
                color: Colors.red[100],
                child: Icon(Icons.help_center_sharp,color: Colors.white,),
                onPressed: () async {

                },
              ),
            ],
          ),
          body: new Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            child: new ListView(
              children: <Widget>[],
            ),
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.thumb_up,color: Colors.blue,),
          )
        ],
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },

    );
    AlertDialog alert = AlertDialog(
      elevation: 20,
      backgroundColor: Colors.black,
      title: Text("Requires Help?\n",
        style: TextStyle(
          color: Colors.white,
          wordSpacing: 2,
          letterSpacing: 1.6,
        ),
      ),
      content: Text("Call us at 1234567890\n\nMail us at help@healthAssistant.com",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        okButton,

      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

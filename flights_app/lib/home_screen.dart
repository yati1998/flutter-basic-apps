import 'package:flutter/material.dart';
import 'package:flights_app/flight_list.dart';
class HomeBody extends StatefulWidget{
  @override
  HomeBodyState createState() {
    return new HomeBodyState();
  }
}

class HomeBodyState extends State<HomeBody> {
  final textController = TextEditingController();


  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Image(
              image:AssetImage('assets/logo.png'),
            ),
            SizedBox(),
            Text("Make My Flights", style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
                fontWeight: FontWeight.bold),),
            SizedBox(height: 40.0),
            TextField(
              controller: textController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                     borderRadius: BorderRadius.circular(20.0)
                ),
                hintText: "FullName",
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 10.0
                )
              ),

            ),
            SizedBox(height: 10.0),
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              color: Colors.amber,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
              ),
              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) =>
                    FlightListScreen(fullName : textController.text)));


              },
                child: new Text("Proceed"),

            ),

          ],
        ),
      ),
    );

  }
}
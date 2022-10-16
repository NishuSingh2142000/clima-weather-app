import 'package:flutter/material.dart';
import 'constants.dart';

class CityScreen extends StatefulWidget {
  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_img.png'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
             children: [
               Align(
                 alignment: Alignment.topLeft,
                 child: TextButton(
                   onPressed: () {
                     Navigator.pop(context);
                   },
                   child: Icon(
                     Icons.arrow_back_ios,
                     color: Colors.white,
                     size: 50.0,
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(20.0),
                 child: TextField(
                   style: TextStyle(
                     color: Colors.black,
                   ),
                   decoration: kStyleInputDecoration,
                   onChanged: (value){
                     cityName = value;
                   },
                 ),
               ),
               TextButton(onPressed: (){
                 Navigator.pop(context,cityName);
               }, child: Text('Get Weather', style: kButtonTextStyle,))
             ],
          ),
        ),
      ),
    );
  }
}

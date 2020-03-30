import 'package:flutter/material.dart';
import 'package:flutter_map_picker/flutter_map_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'google_places_api_key.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Map Picker Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Map Picker Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static const LatLng DEFAULT_LAT_LNG = LatLng(40.416775, 	-3.703790); //Madrid

  String result = '';

  @override
  Widget build(BuildContext context) {


    pickArea() async{
      AreaPickerResult pickerResult = await Navigator.push(context, MaterialPageRoute(builder: (context) =>  AreaPickerScreen(
        googlePlacesApiKey: GOOGLE_PLACES_API_KEY,
        initialPosition: DEFAULT_LAT_LNG,
        mainColor: Colors.purple,
        mapStrings: MapPickerStrings.spanish(),
        placeAutoCompleteLanguage: 'es',
        markerAsset: 'assets/images/icon_look_area.png',
      )));

      setState(() {
        result = pickerResult.toString();
      });
    }

    pickPlace() async {
      PlacePickerResult pickerResult = await Navigator.push(context, MaterialPageRoute(builder: (context) =>  PlacePickerScreen(
        googlePlacesApiKey: GOOGLE_PLACES_API_KEY,
        initialPosition: DEFAULT_LAT_LNG,
        mainColor: Colors.purple,
        mapStrings: MapPickerStrings.spanish(),
        placeAutoCompleteLanguage: 'es',
      )));

      setState(() {
        result = pickerResult.toString();
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: pickArea,
              child: Text("Pick area"),
            ),
            RaisedButton(
              onPressed: pickPlace,
              child: Text("Pick place"),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(result),
            )
          ],
        ),
      )
    );
  }
}

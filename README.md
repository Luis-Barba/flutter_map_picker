# map_picker

Pick an area or a place on google maps

## Getting Started

### Pick area

```flutter
AreaPickerResult pickerResult = await Navigator.push(context, MaterialPageRoute(builder: (context) =>  AreaPickerScreen(
        googlePlacesApiKey: GOOGLE_PLACES_API_KEY,
        initialPosition: DEFAULT_LAT_LNG,
        mainColor: Colors.cyan,
        markerAsset: 'assets/images/icon_look_area.png',
        enableFreeDraw: true,
      )));
```

### Pick address

```flutter
PlacePickerResult pickerResult = await Navigator.push(context, MaterialPageRoute(builder: (context) =>  PlacePickerScreen(
        googlePlacesApiKey: GOOGLE_PLACES_API_KEY,
        initialPosition: DEFAULT_LAT_LNG,
        mainColor: Colors.cyan,
      )));
```

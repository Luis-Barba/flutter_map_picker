# flutter_map_picker

Pick an area or a place on google maps

## Getting Started

Follow the steps to integrate Google Maps (https://pub.dev/packages/google_maps_flutter)

### Pick area

```flutter
AreaPickerResult pickerResult = await Navigator.push(context, MaterialPageRoute(builder: (context) =>  AreaPickerScreen(
        googlePlacesApiKey: GOOGLE_PLACES_API_KEY,
        initialPosition: DEFAULT_LAT_LNG,
        mainColor: Colors.purple,
        mapStrings: MapPickerStrings.spanish(),
        placeAutoCompleteLanguage: 'es',
        markerAsset: 'assets/images/icon_look_area.png',
      )));
```

![Screenshot](screenshots/pick_area_1.gif)

![Screenshot](screenshots/pick_area_2.gif)

### Pick address

```flutter
PlacePickerResult pickerResult = await Navigator.push(context, MaterialPageRoute(builder: (context) =>  PlacePickerScreen(
        googlePlacesApiKey: GOOGLE_PLACES_API_KEY,
        initialPosition: DEFAULT_LAT_LNG,
        mainColor: Colors.purple,
        mapStrings: MapPickerStrings.spanish(),
        placeAutoCompleteLanguage: 'es',
      )));
```

![Screenshot](screenshots/pick_place_1.gif)

![Screenshot](screenshots/pick_place_2.gif)


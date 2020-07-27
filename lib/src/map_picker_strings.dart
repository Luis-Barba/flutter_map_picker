import 'package:flutter/material.dart';

class MapPickerStrings {
  String selectAddress, saveArea, cancel, delete;
  String distanceInKmFromYou,
      drawAreaOnMap,
      customArea,
      address,
      firstMessageSelectAddress;

  MapPickerStrings(
      {@required this.selectAddress,
      @required this.saveArea,
      @required this.cancel,
      @required this.delete,
      @required this.distanceInKmFromYou,
      @required this.drawAreaOnMap,
      @required this.customArea,
      @required this.address,
      @required this.firstMessageSelectAddress});

  factory MapPickerStrings.spanish(
      {selectAddress = "Seleccionar dirección",
      saveArea = "Guardar zona",
      cancel = "Cancelar",
      delete = "Eliminar",
      distanceInKmFromYou = 'A menos de \$ km de ti',
      drawAreaOnMap = "Dibuja un área en el mapa para buscar",
      customArea = "Área personalizada",
      address = "Dirección",
      firstMessageSelectAddress =
          "Desplaza el mapa para seleccionar una ubicación, o dale a buscar"}) {
    return MapPickerStrings(
      selectAddress: selectAddress,
      saveArea: saveArea,
      cancel: cancel,
      delete: delete,
      distanceInKmFromYou: distanceInKmFromYou,
      drawAreaOnMap: drawAreaOnMap,
      customArea: customArea,
      address: address,
      firstMessageSelectAddress: firstMessageSelectAddress,
    );
  }

  factory MapPickerStrings.english(
      {selectAddress = "Select address",
      saveArea = "Save area",
      cancel = "Cancel",
      delete = "Delete",
      distanceInKmFromYou = 'Less than \$ km from you',
      drawAreaOnMap = "Draw an area on the map to search",
      customArea = "Custom area",
      address = "Address",
      firstMessageSelectAddress =
          "Drag the map to select a location or click search"}) {
    return MapPickerStrings(
      selectAddress: selectAddress,
      saveArea: saveArea,
      cancel: cancel,
      delete: delete,
      distanceInKmFromYou: distanceInKmFromYou,
      drawAreaOnMap: drawAreaOnMap,
      customArea: customArea,
      address: address,
      firstMessageSelectAddress: firstMessageSelectAddress,
    );
  }
  
  factory MapPickerStrings.french(
      {selectAddress = "Selectionner cette adresse",
      saveArea = "Sauvegarder la zone",
      cancel = "Annuler",
      delete = "Supprimer",
      distanceInKmFromYou = 'Moins de \$ km de vous',
      drawAreaOnMap = "Dessinez une zone sur la carte pour rechercher",
      customArea = "Zone personnalisée",
      address = "Adresse",
      firstMessageSelectAddress =
          "Glissez la carte pour selectionner une adresse ou clickez sur rechercher"}) {
    return MapPickerStrings(
      selectAddress: selectAddress,
      saveArea: saveArea,
      cancel: cancel,
      delete: delete,
      distanceInKmFromYou: distanceInKmFromYou,
      drawAreaOnMap: drawAreaOnMap,
      customArea: customArea,
      address: address,
      firstMessageSelectAddress: firstMessageSelectAddress,
    );
  }
}

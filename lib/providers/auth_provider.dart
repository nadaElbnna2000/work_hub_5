import 'package:flutter/material.dart';

import '../models/owner_material_data_model.dart';
import '../models/text_field_data_model.dart';
import '../view/home/my_home_screen.dart';

class AuthProvider extends ChangeNotifier {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List<TextFieldDataModel> registerFieldsList = [
    TextFieldDataModel(
      hintText: 'Enter Your First Name',
      labelText: 'First Name',
    ),
    TextFieldDataModel(
      hintText: 'Enter Your Last Name',
      labelText: 'Last Name',
    ),
    TextFieldDataModel(
      hintText: 'Enter Your Email',
      labelText: 'Email',
    ),
    TextFieldDataModel(
      hintText: 'Enter Your Phone Number',
      labelText: 'Phone Number',
    ),
    TextFieldDataModel(
      hintText: 'Enter Your Password',
      labelText: 'Password',
    ),
    TextFieldDataModel(
      hintText: 'Enter Your Confirm Password',
      labelText: 'Confirm Password',
    ),
  ];
  List<TextFieldDataModel> ownerFieldsList = [
    TextFieldDataModel(
      hintText: 'Enter Your WorkSpace Name',
      labelText: 'WorkSpace Name',
    ),
    TextFieldDataModel(
      hintText: 'Enter Your Capacity',
      labelText: 'Capacity',
    ),
    TextFieldDataModel(
      hintText: 'Enter Your Location',
      labelText: 'Location',
    ),
    TextFieldDataModel(
      hintText: 'Enter Your Contact Number',
      labelText: 'Contact Number',
    ),
  ];

  bool checkBoxValue = true;

  changeCheckBoxValue(bool? state) {
    if (state == null) {
      return;
    }
    checkBoxValue = state;
    notifyListeners();
  }

  int ownerIndex = 0;

  changeOwnerIndex(BuildContext context) {
    if (ownerIndex != 3) {
      ownerIndex++;
      notifyListeners();
    } else {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (crx) => const MyHomeScreen(),
        ),
        (route) => false,
      );
    }
  }

  resetOwnerIndex() {
    ownerIndex = 0;
    notifyListeners();
  }

  List<OwnerMaterialDataModel> ownerMaterialList = [
    OwnerMaterialDataModel(
      title: 'Add Desk',
      innerList: [
        InnerList(
          title: 'Price of hour',
          count: AuthProvider.priceOfHourDesk,
        ),
        InnerList(
          title: 'Desks number',
          count: AuthProvider.desksNumber,
        ),
      ],
    ),
    OwnerMaterialDataModel(
      title: 'Add Room',
      innerList: [
        InnerList(
          title: 'Price of hour',
          count: AuthProvider.priceOfHourRoom,
        ),
        InnerList(
          title: 'Room capacity',
          count: AuthProvider.roomCapacity,
        ),
      ],
    ),
    OwnerMaterialDataModel(
      title: 'Add Private Office',
      innerList: [
        InnerList(
          title: 'Price of hour',
          count: AuthProvider.priceOfHourOffice,
        ),
        InnerList(
          title: 'Desks number',
          count: AuthProvider.guestsNumber,
        ),
      ],
    ),
  ];

  static int priceOfHourDesk = 0;
  static int priceOfHourRoom = 0;
  static int priceOfHourOffice = 0;
  static int desksNumber = 0;
  static int roomCapacity = 0;
  static int guestsNumber = 0;

  add(int outerIndex, int innerIndex) {

    OwnerMaterialType type = getMaterialType(outerIndex, innerIndex);
    if (type == OwnerMaterialType.priceOfDesk) {
      priceOfHourDesk++;
    }
    if (type == OwnerMaterialType.priceOfOffice) {
      priceOfHourOffice++;
    }
    if (type == OwnerMaterialType.priceOfRoom) {
      priceOfHourRoom++;
    }
    if (type == OwnerMaterialType.desksNumber) {
      desksNumber++;
    }
    if (type == OwnerMaterialType.roomCapacity) {
      roomCapacity++;
    }
    if (type == OwnerMaterialType.guestsNumber) {
      guestsNumber++;
    }
    notifyListeners();
  }

  min(int outerIndex, int innerIndex) {
    OwnerMaterialType type = getMaterialType(outerIndex, innerIndex);
    if (type == OwnerMaterialType.priceOfDesk) {
      if (priceOfHourDesk != 0) priceOfHourDesk--;
    }
    if (type == OwnerMaterialType.priceOfOffice) {
      if (priceOfHourOffice != 0) priceOfHourOffice--;
    }
    if (type == OwnerMaterialType.priceOfRoom) {
      if (priceOfHourRoom != 0) priceOfHourRoom--;
    }
    if (type == OwnerMaterialType.desksNumber) {
      if (desksNumber != 0) desksNumber--;
    }
    if (type == OwnerMaterialType.roomCapacity) {
      if (roomCapacity != 0) roomCapacity--;
    }
    if (type == OwnerMaterialType.guestsNumber) {
      if (guestsNumber != 0) guestsNumber--;
    }
    notifyListeners();
  }

  getCount(int outerIndex, int innerIndex) {

    OwnerMaterialType type = getMaterialType(outerIndex, innerIndex);
    if (type == OwnerMaterialType.priceOfDesk) {
      return priceOfHourDesk;
    }
    if (type == OwnerMaterialType.priceOfOffice) {
     return priceOfHourOffice;
    }
    if (type == OwnerMaterialType.priceOfRoom) {
      return priceOfHourRoom;
    }
    if (type == OwnerMaterialType.desksNumber) {
      return desksNumber;
    }
    if (type == OwnerMaterialType.roomCapacity) {
      return roomCapacity;
    }
    if (type == OwnerMaterialType.guestsNumber) {
      return guestsNumber;
    }
  }

  OwnerMaterialType getMaterialType(int outerIndex, int innerIndex) {
    if (outerIndex == 0) {
      if (innerIndex == 0) {
        return OwnerMaterialType.priceOfDesk;
      } else {
        return OwnerMaterialType.desksNumber;
      }
    } else if (outerIndex == 1) {
      if (innerIndex == 0) {
        return OwnerMaterialType.priceOfRoom;
      } else {
        return OwnerMaterialType.roomCapacity;
      }
    } else {
      if (innerIndex == 0) {
        return OwnerMaterialType.priceOfOffice;
      } else {
        return OwnerMaterialType.guestsNumber;
      }
    }
  }
}

enum OwnerMaterialType {
  priceOfDesk,
  priceOfRoom,
  priceOfOffice,
  desksNumber,
  roomCapacity,
  guestsNumber,
}

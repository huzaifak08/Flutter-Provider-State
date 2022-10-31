import 'package:flutter/foundation.dart';

class FavouriteProvider with ChangeNotifier {
  List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  // Add Item in Favourite:

  void addItem(int value) {
    _selectedItem.add(value);
    notifyListeners();
  }

  // Remove Item from Favourite:

  void removeItem(int value) {
    _selectedItem.remove(value);
    notifyListeners();
  }
}

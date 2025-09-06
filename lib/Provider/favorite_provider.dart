import 'package:flutter/foundation.dart';

class FavoriteProvider with ChangeNotifier{
 List<int> _selectedItem =[];

List<int> get selectedItem=> _selectedItem;

 addItem(int value){
   _selectedItem.add(value);
   notifyListeners();
 }

 removeItem(int value){
   _selectedItem.remove(value);
   notifyListeners();
 }
}
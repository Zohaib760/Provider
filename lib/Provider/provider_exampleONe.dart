import 'package:flutter/foundation.dart';

class ExampleOneProvider with ChangeNotifier {

  double _val = 1.0;

  get value =>_val;

   void setValue(value){
     _val =value;
     notifyListeners();
   }

}
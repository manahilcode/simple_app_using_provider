import 'package:flutter/foundation.dart';
class Count_add with ChangeNotifier{
  int _a=0;
  int get b=>_a;
void  add(){
   _a++;
   notifyListeners();
}
}
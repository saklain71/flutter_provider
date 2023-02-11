
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserDetailsProvider extends ChangeNotifier{

  TextEditingController  nameController  = TextEditingController();
  TextEditingController  ageController  = TextEditingController();
  int _age = 27;
  int _age2 = 28;
  String _userName = "Sami";
  String _userName2 = "Tithi";
  int get userAge => _age;
  int get userAge2 => _age2;
  String get userName => _userName;
  String get userName2 => _userName2;

void updateAge (int age){
  _age = age;
  notifyListeners();
}
  void increseAge (){
    _age += 1;
    notifyListeners();
  }

  void decreaseAge (){
    _age -= 1;
    notifyListeners();
  }
  void userNameSami(String name) {
    _userName = name;
    notifyListeners();
  }
  void userNameTithi(String name) {
    _userName2 = name;
    notifyListeners();
  }
  void seeResult(context){
   ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 5),
            content: Text('OPPS!!! Get Married Early!!!',
              style: TextStyle(color: Colors.red),
            )));
   notifyListeners();
  }

}
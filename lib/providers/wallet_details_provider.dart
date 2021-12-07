import 'package:Pi6/models/address_details.dart';
import 'package:Pi6/repository/api_repository.dart';
import 'package:flutter/material.dart';

class WalletDetailsProvider with ChangeNotifier {
  ApiRepository _apiRepository = ApiRepository();
  final List<Address> _addresses = [];
  Map _balance = {};

  List get addresses => _addresses;

  int get balance => _balance['amount'];

  void addAddress(Address address) async {
    _addresses.add(address);
    final response =
        await _apiRepository.getAddressDetails(_addresses[0].address, "cosmos");
    _balance = {'denom': response['denom'], 'amount': response['amount']};
    notifyListeners();
  }

  void deleteAddress(Address address) {
    _addresses.remove(address);
    notifyListeners();
  }
}

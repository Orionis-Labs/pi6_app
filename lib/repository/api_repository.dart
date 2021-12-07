import 'package:dio/dio.dart';

class ApiRepository {
  Future getAddressDetails(String address, String network) async {
    try {
      if (address.contains("cosmos")) {
        Response response = await Dio().get(
            "https://lcd-cosmoshub.keplr.app/cosmos/bank/v1beta1/balances/$address");
        print(response.data);
        return response.data;
      } else {}
    } catch (e) {
      print(e);
    }
  }
}

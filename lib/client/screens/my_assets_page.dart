import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/Colors.dart';
import '../../utils/Style.dart';

class MyAssetsPage extends StatelessWidget {
  const MyAssetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 16,
          ),
          AssetCardDetails(
            assetTitle: 'Tezos',
            priceInDollar: '123',
            priceInTezos: '50',
            type: 'NFT',
            color: opPrimaryColor,
          ),
          AssetCardDetails(
            assetTitle: 'Tezos',
            priceInDollar: '123',
            priceInTezos: '50',
            type: 'NFT',
            color: opOrangeColor,
          ),
          AssetCardDetails(
            assetTitle: 'Tezos',
            priceInDollar: '123',
            priceInTezos: '50',
            type: 'NFT',
            color: opPrimaryColor,
          ),
          AssetCardDetails(
            assetTitle: 'Tezos',
            priceInDollar: '123',
            priceInTezos: '50',
            type: 'NFT',
            color: opOrangeColor,
          ),
          AssetCardDetails(
            assetTitle: 'Tezos',
            priceInDollar: '123',
            priceInTezos: '50',
            type: 'NFT',
            color: opPrimaryColor,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFFE4E6FF),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: opPrimaryColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Add new asset",
                  style: TextStyle(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:Pi6/models/address_details.dart';
import 'package:Pi6/providers/wallet_details_provider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:nb_utils/src/extensions/widget_extensions.dart';
import 'package:provider/src/provider.dart';

import '../screens/main_page.dart';

class WalletDetailsPage extends StatefulWidget {
  @override
  _WalletDetailsPageState createState() => _WalletDetailsPageState();
}

class _WalletDetailsPageState extends State<WalletDetailsPage> {
  PageController pageController = PageController(initialPage: 0);
  int pageNumber = 0;
  int selectIndex = 0;
  int containerIndex = 0;
  TextEditingController _walletAddressController = TextEditingController();

  Color screenColor = Color(0xFFEBA791);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: double.infinity,
              child: Container(
                padding: EdgeInsets.only(
                    left: 16, bottom: 100, right: 16, top: size.height * 0.05),
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        child: Container(
                          height: context.height(),
                          width: context.width(),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                16.height,
                                16.height,
                                Text('Let\'s get going!',
                                        style: boldTextStyle(
                                            size: 24, color: screenColor))
                                    .paddingLeft(12.0),
                                16.height,
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            // border: Border.all(color: Colors.black),
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: DropdownButtonFormField(
                                            decoration: InputDecoration(
                                              labelText: 'Select Wallet Type',
                                              labelStyle: boldTextStyle(
                                                  size: 16, color: screenColor),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: screenColor),
                                              ),
                                            ),
                                            elevation: 2,
                                            value: selectIndex,
                                            onChanged: (value) {
                                              setState(() {
                                                selectIndex = int.tryParse(
                                                    value.toString())!;
                                              });
                                            },
                                            items: [
                                              DropdownMenuItem(
                                                child: Text('Cosmos'),
                                                value: 0,
                                              ),
                                              DropdownMenuItem(
                                                child: Text('Osmosis'),
                                                value: 1,
                                              ),
                                              DropdownMenuItem(
                                                child: Text('Akash'),
                                                value: 2,
                                              ),
                                              DropdownMenuItem(
                                                child: Text('Juno'),
                                                value: 3,
                                              ),
                                              DropdownMenuItem(
                                                child: Text('Terra'),
                                                value: 4,
                                              ),
                                              DropdownMenuItem(
                                                child: Text('Secret'),
                                                value: 5,
                                              ),
                                            ],
                                          ),
                                        ),
                                        TextField(
                                          controller: _walletAddressController,
                                          decoration: InputDecoration(
                                            labelText: 'Wallet Address',
                                            labelStyle: boldTextStyle(
                                                size: 16, color: screenColor),
                                            // enabledBorder: OutlineInputBorder(
                                            //   borderSide: BorderSide(color: Colors.black),
                                            //   borderRadius: BorderRadius.circular(8.0),
                                            // ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: screenColor),
                                            ),
                                          ),
                                          onChanged: (value) {
                                            // state.walletName = value;
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    DottedBorder(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: (MediaQuery.of(context)
                                                  .size
                                                  .width) /
                                              4),
                                      radius: Radius.circular(8.0),
                                      color: Colors.black,
                                      strokeWidth: 1,
                                      dashPattern: [
                                        6,
                                        6,
                                      ],
                                      borderType: BorderType.RRect,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Center(
                                          child: Text("Add another address"),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ).paddingBottom(16),
                          ),
                        ),
                        width: 800,
                        height: 500,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  context.read<WalletDetailsProvider>().addAddress(Address(
                      id: 1,
                      address: _walletAddressController.text,
                      network: ""));
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: Text("Continue"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

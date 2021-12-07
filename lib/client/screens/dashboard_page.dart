import 'package:Pi6/providers/wallet_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/src/provider.dart';
import '../../utils/Colors.dart';
import '../../utils/Style.dart';

import 'transaction_details_page.dart';

// ignore: non_constant_identifier_names
class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 260,
                  width: double.infinity,
                  child: PageView(
                    pageSnapping: true,
                    children: <Widget>[
                      Container(
                        child: CardDetails(
                          networkTitle: 'Tezos',
                          amountInDollar: '3456',
                          amountInTezos: context
                              .read<WalletDetailsProvider>()
                              .balance
                              .toString(),
                          rewards: '10.33333334',
                          color: opPrimaryColor,
                        ),
                      ),
                      AssetCardDetails(
                        assetTitle: 'Tezos',
                        priceInDollar: '123',
                        priceInTezos: '50',
                        type: 'NFT',
                        color: opOrangeColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Transactions',
                      style:
                          secondaryTextStyle(size: 18, fontFamily: fontMedium)),
                  Container(
                    padding: EdgeInsets.only(left: 16, right: 5),
                    height: 34,
                    margin: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.grey.withAlpha(50)),
                    ),
                    child: DropdownButton(
                      value: 'Weekly',
                      underline: SizedBox(),
                      items: <String>['Daily', 'Weekly', 'Monthly', 'Yearly']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: primaryTextStyle(size: 14)),
                        );
                      }).toList(),
                      onChanged: (dynamic value) {},
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  width: double.infinity,
                  child: DashboardList(
                    name: 'John Doe',
                    status: 'Payment sent',
                    color: opOrangeColor,
                    icon: Icons.call_made,
                    colors: Colors.red,
                    iconcolor: Colors.red,
                    amount: '- \$50',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TransactionDetailsPage(),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  width: double.infinity,
                  child: DashboardList(
                    name: 'John Doe',
                    status: 'Payment Received',
                    color: opPrimaryColor,
                    amount: '+ \$250',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TransactionDetailsPage(),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  width: double.infinity,
                  child: DashboardList(
                    name: 'John Doe',
                    status: 'Payment sent',
                    color: opOrangeColor,
                    amount: '- \$150',
                    icon: Icons.call_made,
                    colors: Colors.red,
                    iconcolor: Colors.red,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TransactionDetailsPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

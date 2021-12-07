import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tezart/tezart.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(top: 16, bottom: 16),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Slidable(
              key: ValueKey(index),
              actionPane: SlidableDrawerActionPane(),
              actions: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      IconSlideAction(
                        caption: '',
                        color: Colors.transparent,
                        icon: Icons.edit,
                        closeOnTap: true,
                        foregroundColor: Colors.transparent,
                        onTap: () {},
                      ),
                      Icon(Icons.edit).center(),
                    ],
                    alignment: Alignment.center,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green),
                  margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  alignment: Alignment.center,
                )
              ],
              secondaryActions: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      IconSlideAction(
                        caption: '',
                        color: Colors.transparent,
                        icon: Icons.edit,
                        closeOnTap: true,
                        foregroundColor: Colors.transparent,
                        onTap: () {},
                      ),
                      Icon(Icons.delete_forever_outlined).center(),
                    ],
                    alignment: Alignment.center,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red),
                  margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  alignment: Alignment.center,
                ),
              ],
              dismissal: SlidableDismissal(
                child: SlidableDrawerDismissal(),
              ),
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                decoration: BoxDecoration(
                    boxShadow: defaultBoxShadow(),
                    borderRadius: BorderRadius.circular(12)),
                child: IntrinsicHeight(
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(color: Colors.grey, width: 10),
                        SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("full name",
                                                style: boldTextStyle(
                                                    color: Colors.black),
                                                maxLines: 2),
                                            Text(Keystore.random().address,
                                                style: primaryTextStyle(
                                                    size: 16,
                                                    color: Colors.green)),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
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
                color: Colors.blue,
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
              "Add new contact",
              style: TextStyle(),
            ),
          ],
        ),
      )
    ]);
  }
}

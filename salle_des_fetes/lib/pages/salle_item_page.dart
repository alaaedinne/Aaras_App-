import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:salle_des_fetes/components/action_button.dart';

class SalleItemPage extends StatelessWidget {
  final salleItem;

  SalleItemPage({
    this.salleItem,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: <Widget>[
          _buildBody(context),
          _buildAppBar(context),
          Align(
            child: _buildBottomBar(context),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    ));
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.35,
          //  decoration: BoxDecoration(
          //  image: DecorationImage(
          //  image:
          // NetworkImage(
          // salleItem.imageUrl,
          //),
          // fit: BoxFit.cover,
          // ),
          // ),
          child: Image.asset(
            "Assets/hotel5.jpg",
            fit: BoxFit.fill,
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(
            24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    salleItem.itemName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )),

                  /// النقائص
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.red,
                    size: 18,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    salleItem.rating,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Text(
                  salleItem.price + "\$",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "Some random text picked from somewhere just to get plenty of text, so please ignore what follows next. This application makes it possible using the convenient interface not only to order an interesting dish for yourself, but also to pay for the entire order with the ability to leave a tip to the waiter.",
                style: TextStyle(
                    color: Colors.black, fontSize: 14, wordSpacing: 5),
              )
            ],
          ),
        )),
      ],
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ActionButton(
            icon: Icons.arrow_back_ios,
            onTap: () => Navigator.pop(context),
          ),
          ActionButton(
            icon: Icons.add_shopping_cart,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            child: Padding(
              padding: const EdgeInsets.all(
                12,
              ),
              child: Icon(
                Icons.favorite_border,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: RaisedButton(
                onPressed: () {},
                padding: EdgeInsets.all(
                  16,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                  8,
                ))),
                color: Theme.of(context).accentColor,
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

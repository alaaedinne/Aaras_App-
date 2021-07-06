import 'package:flutter/material.dart';
import 'package:salle_des_fetes/components/action_button.dart';
import 'package:salle_des_fetes/components/food_item_card.dart';
import 'package:salle_des_fetes/pages/salle_item_page.dart';
import 'package:salle_des_fetes/providers/salle_items_provider.dart';

class MenuPage extends StatelessWidget {
  createAlertDailog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Alert"),
            content: Text("You are from algeria"),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                elevation: 5,
                child: Text("submit"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                fontSize: 15,
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 20,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                "choses your place",
                style: TextStyle(fontSize: 20),
              )),
              ActionButton(
                onTap: () {
                  createAlertDailog(context);
                },
                icon: Icons.search,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              top: 36,
            ),
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
            ),
            decoration: BoxDecoration(
              color: Color(0xffB9D7D5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  36,
                ),
              ),
            ),
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              children: SalleItemsProvider.items.map((item) {
                return GestureDetector(
                  child: SalleItemCard(
                    // imageUrl: item.imageUrl,
                    itemName: item.itemName,
                    // estimatedTime: item.estimatedTime,
                    rating: item.rating,
                    price: item.price,
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => SalleItemPage(
                                salleItem: item,
                              ))),
                );
              }).toList(),
              physics: ClampingScrollPhysics(),
            ),
          ),
        ),
      ],
    );
  }
}

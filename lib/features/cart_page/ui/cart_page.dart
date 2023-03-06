import 'package:flutter/material.dart';
import 'package:pulzion23/constants/models/event_model.dart';
import 'package:pulzion23/features/cart_page/ui/card_list_tile.dart';

import '../../../constants/styles.dart';

var eventList = <Events>[
  Events(name: 'Dextrous', mode: 'Technical Events', price: 50.0),
  Events(name: 'Fandom Quiz', mode: 'Non-Technical Events', price: 30.0),
];

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Your Cart",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "${eventList.length} items",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: Container(
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(color: Colors.black, boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    spreadRadius: 3,
                    blurRadius: 9,
                    offset: const Offset(0, -4), // changes position of shadow
                  ),
                ]),
                child: Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: h / 12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TOTAL : ",
                                style: AppStyles.bodyTextStyle3().copyWith(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "80",
                                    style: AppStyles.bodyTextStyle3(),
                                  ),
                                  // Text(
                                  //   style: AppStyles.bodyTextStyle3(),
                                  // ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(12),
                              gradient: const LinearGradient(
                                  colors: [
                                    Color(0xff07f49e),
                                    Color(0xff42047e)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Checkout  ",
                                  style: AppStyles.bodyTextStyle3().copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: List.generate(
                2,
                (index) {
                  // if (index == 0) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        eventList[index].mode!,
                        style: AppStyles.bodyTextStyle3().copyWith(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      // if (eventList[index].mode! == 'Technical Events')
                      CartListTile(eventList[index]),
                    ],
                  );
                  // } else {
                  //   return CartListTile(eventList[index]);
                  // }
                },
              ),
            ),
            // Column(
            //   children: List.generate(
            //     2,
            //     (index) {
            //       if (index == 0) {
            //         return Column(
            //           children: [
            //             Text(
            //               'Non-Technical Events',
            //               style: AppStyles.bodyTextStyle2(),
            //             ),
            //             CartListTile(eventList[index]),
            //           ],
            //         );
            //       } else {
            //         return CartListTile(eventList[index]);
            //       }
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

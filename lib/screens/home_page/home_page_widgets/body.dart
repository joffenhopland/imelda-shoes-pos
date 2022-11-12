import 'package:flutter/material.dart';
import 'package:imelda_shoes_pos/screens/add_customer_page/add_customer_page.dart';

import '../../../constants.dart';



class Body extends StatefulWidget {
  const Body({Key? key,}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Center(child: Text("Universal searchbar here")),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AddCustomerPage()),
                          );
                        },
                        label: Text('Add customer', style: TextStyle(fontSize: 15.0)),
                        icon: Icon(Icons.add),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        label: Text('Products', style: TextStyle(fontSize: 15.0)),
                        icon: Icon(Icons.inventory),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        label:
                        Text('Add discount', style: TextStyle(fontSize: 15.0)),
                        icon: Icon(Icons.percent_sharp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        label:
                        Text('Add note', style: TextStyle(fontSize: 15.0)),
                        icon: Icon(Icons.note_add_outlined),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        label: Text('View saved carts', style: TextStyle(fontSize: 15.0)),
                        icon: Icon(Icons.shopping_cart_outlined),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        label: Text('Send cart', style: TextStyle(fontSize: 15.0)),
                        icon: Icon(Icons.shopping_cart_checkout_outlined),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        label: Text('Ship to customer', style: TextStyle(fontSize: 15.0)),
                        icon: Icon(Icons.local_shipping_outlined),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){}, child: Text("Clear cart")),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){}, child: Text("Save cart")),
                  )
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      title: Text("Product in cart 1"),
                    ),
                    ListTile(
                      title: Text("Product in cart 2"),
                    ),
                    ListTile(
                      title: Text("Product in cart 3"),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total"),
                    Text("0,-"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {},
                    child: SizedBox(width: 200, height: 50, child: Center(child: Text("Checkout")))),
              )

            ],
          ),
        )
      ],
    );
  }
}
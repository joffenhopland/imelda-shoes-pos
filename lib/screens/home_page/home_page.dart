import 'package:flutter/material.dart';
import 'package:imelda_shoes_pos/api/imelda_shoes_pos_api.dart';
import 'package:imelda_shoes_pos/models/customer.dart';
import 'package:imelda_shoes_pos/models/product.dart';
import 'package:imelda_shoes_pos/screens/customers_page/customers_page.dart';
import 'package:imelda_shoes_pos/screens/home_page/home_page_widgets/body.dart';
import 'package:imelda_shoes_pos/screens/home_page/home_page_widgets/bottom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<ProductModel> products;


  // load all products
  Future loadAllProducts() async {
    final products = await ImeldaShoesApi().getAllProducts();
    setState(() => this.products = products);
  }



  @override
  void initState() {
    super.initState();
    loadAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Imelda Shoes POS"),
      ),
      body: Body(),
      // bottomNavigationBar: BottomAppBarWidget(),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag_outlined),
              title: const Text('Orders'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: const Text('Customers'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomersPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: const Text('Products'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.analytics_outlined),
              title: const Text('Analytics'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.emoji_people),
              title: const Text('Staff'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

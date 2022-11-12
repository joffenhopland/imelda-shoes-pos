import 'package:flutter/material.dart';

import '../../api/imelda_shoes_pos_api.dart';
import '../../models/customer.dart';


class CustomersPage extends StatefulWidget {
  const CustomersPage({Key? key}) : super(key: key);

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  late List<CustomerModel> customers;

  // load all customers
  Future loadAllCustomers() async {
    final customers = await ImeldaShoesApi().getAllCustomers();
    setState(() => this.customers = customers);
  }

  @override
  void initState() {
    super.initState();
    loadAllCustomers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Customers"),),
      body: ListView.builder(
        itemCount: customers.length,
          itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text("${customers[index].email}"),
          );
          }),
    );
  }
}

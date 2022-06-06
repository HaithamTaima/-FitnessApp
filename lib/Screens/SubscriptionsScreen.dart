import 'package:flutter/material.dart';
import '../items/SubscriptionItem.dart';
import '../models/ModelSubscriptions.dart';

class SubscriptionsScreen extends StatefulWidget {
  const SubscriptionsScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionsScreen> createState() => _SubscriptionsScreenState();
}

class _SubscriptionsScreenState extends State<SubscriptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF26273B),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Subscriptions"),
        backgroundColor: Color(0xFFEC6454),
      ),
      body: ListView.builder(

        itemBuilder: (context, index) {

          return SubscriptionItem(Subscription: SubscriptionList[index]);
        },

        itemCount: SubscriptionList.length,
      ),
    );
  }
}

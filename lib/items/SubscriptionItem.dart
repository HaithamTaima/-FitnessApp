import 'package:flutter/material.dart';
import '../Screens/RestaurantDetailsScreen.dart';
import '../models/ModelSubscriptions.dart';

class SubscriptionItem extends StatefulWidget {
  final ModelSubscription Subscription;

  const SubscriptionItem({
    required this.Subscription,
    Key? key,
  }) : super(key: key);

  @override
  _SubscriptionItemState createState() => _SubscriptionItemState();
}

class _SubscriptionItemState extends State<SubscriptionItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                RestaurantDetailsScreen(widget.Subscription.name,widget.Subscription.img)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        child: Container(
          color: Color(0xff2A2C41),
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.Subscription.img),
                    maxRadius: 30,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.Subscription.name,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(widget.Subscription.icon),
                    ],
                  ),
                ],
              ),
              const Divider(color: Color(0xFF34364E)),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Subscription Date',
                          style:
                              TextStyle(color: Color(0xFF646781), fontSize: 14),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              widget.Subscription.start,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.arrow_forward,
                                color: Color(0xFF646781), size: 15),
                            Text(
                              widget.Subscription.finish,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Plan',
                            style: TextStyle(
                                color: Color(0xFF646781), fontSize: 14)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(widget.Subscription.price,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

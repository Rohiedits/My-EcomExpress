import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/phone.dart';

class PhoneTitle extends StatelessWidget {
  Phone phone;
  void Function()? onTap;
  PhoneTitle({
    super.key,
    required this.phone,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //phone pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(phone.imagePath),
          ),

          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              phone.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          //price + Details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //phone Name
                    Text(
                      phone.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    const SizedBox(
                      height: 5,
                    ),
                    //price

                    Text(
                      '\₹' + phone.price,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                //plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),

          //Button to Add to Cart
        ],
      ),
    );
  }
}


import 'package:bizlx_app/views/listing_profile/widgets/listing_hot_deals.dart';
import 'package:flutter/material.dart';

class FollowBizlx extends StatelessWidget {
  const FollowBizlx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(color: Colors.red),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              'Follow Bizlx',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/info/icon_info.png'),
          ),

        ],
      ),
    );
  }
}

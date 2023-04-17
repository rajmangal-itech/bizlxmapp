import 'package:bizlx_app/constants/global_variables.dart';
import 'package:bizlx_app/views/account/widgets/below_app_bar.dart';
import 'package:bizlx_app/views/account/widgets/orders.dart';
import 'package:bizlx_app/views/account/widgets/top_buttons.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          elevation: 0,
          toolbarHeight: 200,
          flexibleSpace: Container(
            decoration: const BoxDecoration(),
          ),
          title: Row(
            children: [
              Image.asset(
                'assets/images/logo/logo1.png',
                height: 50,
              ),
              const Spacer(),
              ElevatedButton(
                child: Text(
                  'List Business',
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: GlobalVariables.redColor,
                ),
                onPressed: () {},
              ),
              const Spacer(),
              Container(
                child: Image.asset("assets/images/logo/bell-icon 1.png"),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const BelowAppBar(),
          SizedBox(
            height: 10,
          ),
          TopButtons(),
          SizedBox(
            height: 10,
          ),
          Orders(),
        ],
      ),
    );
  }
}

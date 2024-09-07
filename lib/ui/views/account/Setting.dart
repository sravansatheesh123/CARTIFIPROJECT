import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 280,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1)),
        child: Column(
          children: [
            ListTile(
              leading:
                  Icon(Icons.account_circle_outlined, color: Color(0xff317773)),
              title: Text('Edit Profile'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff317773),
              ),
              onTap: () {
                // Action on tap
                print('Settings option tapped');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.lock, color: Color(0xff317773)),
              title: Text('Security'),
              trailing: Icon(Icons.arrow_forward_ios, color: Color(0xff317773)),
              onTap: () {
                // Action on tap
                print('Settings option tapped');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.switch_account, color: Color(0xff317773)),
              title: Text('Saved Address'),
              trailing: Icon(Icons.arrow_forward_ios, color: Color(0xff317773)),
              onTap: () {
                // Action on tap
                print('Settings option tapped');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.payment, color: Color(0xff317773)),
              title: Text('Payment Settings'),
              trailing: Icon(Icons.arrow_forward_ios, color: Color(0xff317773)),
              onTap: () {
                // Action on tap
                print('Settings option tapped');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class order extends StatelessWidget {
  const order({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1)),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.location_on, color: Color(0xff317773)),
              title: Text('Track Order'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff317773),
              ),
              onTap: () {
                // Action on tap
                print('Settings option tapped');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.history, color: Color(0xff317773)),
              title: Text('Order History'),
              trailing: Icon(Icons.arrow_forward_ios, color: Color(0xff317773)),
              onTap: () {
                // Action on tap
                print('Settings option tapped');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class General extends StatelessWidget {
  const General({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 280,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1),
        ),
        child: Column(
          children: [
            ListTile(
              leading:
                  Icon(Icons.wallet_giftcard_rounded, color: Color(0xff317773)),
              title: Text('Invite & Earn'),
              trailing: Icon(Icons.arrow_forward_ios, color: Color(0xff317773)),
              onTap: () {
                // Action on tap
                print('Track Order tapped');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.airplane_ticket, color: Color(0xff317773)),
              title: Text('Coupons'),
              trailing: Icon(Icons.arrow_forward_ios, color: Color(0xff317773)),
              onTap: () {
                // Action on tap
                print('Order History tapped');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.notifications, color: Color(0xff317773)),
              title: Text('Notification'),
              trailing: Icon(Icons.arrow_forward_ios, color: Color(0xff317773)),
              onTap: () {
                // Action on tap
                print('Order History tapped');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.headphones, color: Color(0xff317773)),
              title: Text('help center'),
              trailing: Icon(Icons.arrow_forward_ios, color: Color(0xff317773)),
              onTap: () {
                // Action on tap
                print('Order History tapped');
              },
            ),
          ],
        ),
      ),
    );
  }
}

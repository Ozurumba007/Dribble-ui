// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dribbble_wallet_ui/utili/list_trans.dart';
import 'package:dribbble_wallet_ui/utili/short_cut_trans.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Heading of Application

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Icon(Icons.notifications),
                  ],
                ),

                // Wallet Card Balance

                SizedBox(height: 10),

                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Main Wallet',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'My balance',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '\$150,000',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Transaction Shortcut Button

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShortCutTransaction(
                      icon: Icons.arrow_downward,
                      text: 'Receive',
                    ),
                    ShortCutTransaction(
                      icon: Icons.swap_horiz,
                      text: 'Swap',
                    ),
                    ShortCutTransaction(
                      icon: Icons.arrow_upward,
                      text: 'Send',
                    ),
                    ShortCutTransaction(
                      icon: Icons.credit_card,
                      text: 'Buy',
                    ),
                  ],
                ),

                // Latest Transaction text
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Latest Transaction',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Last Transaction',
                      style: TextStyle(
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),

                // List of Transaction

                ListTransaction(
                  icon: Icons.currency_bitcoin,
                  header: 'Bitcoin',
                  subHeader: 'BTC',
                  amount: '\$30,000 USD',
                  percentage: '-4.90%',
                ),
                ListTransaction(
                  icon: Icons.currency_bitcoin,
                  header: 'Bitcoin',
                  subHeader: 'BTC',
                  amount: '\$20,000 USD',
                  percentage: '-5.90%',
                ),
                ListTransaction(
                  icon: Icons.currency_bitcoin,
                  header: 'Bitcoin',
                  subHeader: 'BTC',
                  amount: '\$15,000 USD',
                  percentage: '-10.90%',
                ),
              ],
            ),
          ),
        ),
      ),
      // Navigation of Application

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.point_of_sale), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

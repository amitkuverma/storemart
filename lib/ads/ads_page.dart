import 'package:flutter/material.dart';

class AdsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marketplace Ads'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          GoogleAdWidget(),
          SizedBox(height: 20),
          MetaAdWidget(),
          SizedBox(height: 20),
          WalmartAdWidget(),
        ],
      ),
    );
  }
}

// Google Ad Widget
class GoogleAdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue, width: 2),
      ),
      child: Column(
        children: [
          Text(
            'Google Ad',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'This is a placeholder for a Google Ad. Integrate the Google Mobile Ads SDK to display real ads.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// Meta (Facebook) Ad Widget
class MetaAdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.green, width: 2),
      ),
      child: Column(
        children: [
          Text(
            'Meta (Facebook) Ad',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'This is a placeholder for a Meta (Facebook) Ad. Use the Audience Network SDK to show real ads.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// Walmart Ad Widget
class WalmartAdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange[100],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.orange, width: 2),
      ),
      child: Column(
        children: [
          Text(
            'Walmart Ad',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'This is a placeholder for a Walmart Ad. Use Walmart’s API to fetch and display relevant ads.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

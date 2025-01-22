import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Details'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          BusinessDetailItem(
            icon: Icons.business,
            label: 'Business Name',
            value: 'Tech Solutions Inc.',
          ),
          Divider(),
          BusinessDetailItem(
            icon: Icons.assignment,
            label: 'Plan',
            value: 'Premium Membership',
          ),
          Divider(),
          BusinessDetailItem(
            icon: Icons.store,
            label: 'Store Details',
            value: 'Online and Offline Store',
          ),
          Divider(),
          BusinessDetailItem(
            icon: Icons.category,
            label: 'Category',
            value: 'Technology & Gadgets',
          ),
          Divider(),
          BusinessDetailItem(
            icon: Icons.location_on,
            label: 'Business Address',
            value: '123 Main Street, Springfield, USA',
          ),
          Divider(),
          BusinessDetailItem(
            icon: Icons.link,
            label: 'Website',
            value: 'https://www.techsolutions.com',
            isLink: true,
          ),
          Divider(),
          SocialMediaSection(),
        ],
      ),
    );
  }
}

class BusinessDetailItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final bool isLink;

  const BusinessDetailItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
    this.isLink = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 24, color: Colors.blue),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              GestureDetector(
                onTap: isLink
                    ? () {
                        // Open URL
                      }
                    : null,
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 14,
                    color: isLink ? Colors.blue : Colors.black87,
                    decoration: isLink ? TextDecoration.underline : null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SocialMediaSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Social Media',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            SocialMediaButton(
              icon: Icons.facebook,
              label: 'Facebook',
              url: 'https://www.facebook.com/yourpage',
            ),
            SizedBox(width: 16),
            SocialMediaButton(
              icon: Icons.camera_alt,
              label: 'Instagram',
              url: 'https://www.instagram.com/yourpage',
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            SocialMediaButton(
              icon: Icons.play_arrow,
              label: 'YouTube',
              url: 'https://www.youtube.com/yourchannel',
            ),
            SizedBox(width: 16),
            SocialMediaButton(
              icon: Icons.alternate_email,
              label: 'X',
              url: 'https://www.twitter.com/yourprofile',
            ),
          ],
        ),
      ],
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final String url;

  const SocialMediaButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // Open the URL
      },
      icon: Icon(icon, size: 18),
      label: Text(label),
      // style: ElevatedButton.styleFrom(
      //   primary: Colors.blue,
      //   onPrimary: Colors.white,
      // ),
    );
  }
}

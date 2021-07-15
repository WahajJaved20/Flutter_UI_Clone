import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 0, top: 50),
              leading: Icon(
                Icons.person_rounded,
                color: Colors.white,
                size: 60,
              ),
              title: Text(
                'Wahaj',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite_border_outlined,
              color: Colors.pink,
            ),
            title: Text('Favorites'),
            onTap: () => Navigator.of(context).pushNamed('/favorite'),
          ),
          ListTile(
            leading: Icon(
              Icons.list_alt_outlined,
              color: Colors.pink,
            ),
            title: Text('Orders'),
            onTap: () => Navigator.of(context).pushNamed('/orders'),
          ),
          ListTile(
            leading: Icon(
              Icons.person_outline,
              color: Colors.pink,
            ),
            title: Text('Profile'),
            onTap: () => Navigator.of(context).pushNamed('/profile'),
          ),
          ListTile(
            leading: Icon(
              Icons.location_on_outlined,
              color: Colors.pink,
            ),
            title: Text('Addresses'),
            onTap: () => Navigator.of(context).pushNamed('/address'),
          ),
          ListTile(
            leading: Icon(
              Icons.emoji_events_outlined,
              color: Colors.pink,
            ),
            title: Text('Challenges And Rewards'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.airplane_ticket_outlined,
              color: Colors.pink,
            ),
            title: Text('Vouchers'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.help_outline_outlined,
              color: Colors.pink,
            ),
            title: Text('Help center'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Terms and Conditions'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

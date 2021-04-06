import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 125,
            child: DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1513002749550-c59d786b8e6c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'),
                      fit: BoxFit.cover),
                ),
                child: Text('Flutter',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24))),
          ),
          ListTile(
            title: Text('Item'),
            leading: Icon(Icons.cloud),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

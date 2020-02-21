import 'package:flutter/material.dart';

class ProviderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider List'),
      ),
      body: Center(
        child: _buildList(context),
      ),
    );
  }
}

Widget _buildList(BuildContext context) => ListView(
      padding: EdgeInsets.all(5.0),
      children: <Widget>[
        _tile(context, 'Provider', Colors.green, Icons.airline_seat_flat_angled, '/provider'),
        Divider( color: Colors.grey ),
        _tile(context, 'Change Notifier Provider', Colors.green, Icons.map, '/change-notifier-provider'),
        Divider( color: Colors.grey ),
        _tile(context, 'Future Provider', Colors.green, Icons.transform, '/future-provider'),
        Divider( color: Colors.grey ),
        _tile(context, 'Stream Provider', Colors.green, Icons.camera, '/stream-provider'),
        Divider( color: Colors.grey ),
        _tile(context, 'Value Listenable Provider', Colors.green, Icons.account_balance, '/value-listenable-provider'),
        Divider( color: Colors.grey ),
        _tile(context, 'Multi Provider', Colors.green, Icons.airplay, '/multi-provider'),
        Divider( color: Colors.grey ),
        _tile(context, 'Proxy Provider', Colors.green, Icons.all_inclusive, '/proxy-provider'),
        Divider( color: Colors.grey ),
      ],
    );

ListTile _tile(BuildContext context, String title, color, IconData icon, String route) {
  return ListTile(
    title: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
    ),
    leading: Icon(
      icon,
      color: color,
      size: 35,
    ),
    onTap: () {
      Navigator.pushNamed(context, route);
    },
  );
}

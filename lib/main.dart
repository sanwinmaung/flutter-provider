import 'package:all_provider/list/a_change_notifier_provider.dart';
import 'package:all_provider/list/a_future_provider.dart';
import 'package:all_provider/list/a_multi_provider.dart';
import 'package:all_provider/list/a_provider.dart';
import 'package:all_provider/list/a_proxy_provider.dart';
import 'package:all_provider/list/a_stream_provider.dart';
import 'package:all_provider/list/a_value_listenable_provider.dart';
import 'package:all_provider/list/provider_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/provider': (context) => AProvider(),
        '/change-notifier-provider': (context) => AChangeNotifierProvider(),
        '/future-provider': (context) => AFutureProvider(),
        '/stream-provider': (context) => AStreamProvider(),
        '/value-listenable-provider': (context) => AValueListenableProvider(),
        '/multi-provider': (context) => AMultiProvider(),
        '/proxy-provider': (context) => AProxyProvider(),
      },
      theme: ThemeData(
        primaryColor: Colors.green[700],
      ),
      home: ProviderList(),
    );
  }
}


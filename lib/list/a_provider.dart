import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:all_provider/model/provider_model.dart';

class AProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<ProviderModel>(
      create: (context) => ProviderModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Provider'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.green[200],
              child: Consumer<ProviderModel>(
                builder: (context, providerModel, child) {
                  return RaisedButton(
                    child: Text('Do Something!'),
                    onPressed: () {
                      providerModel.doSomething();
                    },
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(35.0),
              color: Colors.blue[200],
              child: Consumer<ProviderModel>(
                builder: (context, providerModel, child) {
                  return Text(providerModel.valueOne);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:all_provider/model/change_notifier_provider_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AChangeNotifierProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ChangeNotifierProviderModel>(
      create: (context) => ChangeNotifierProviderModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Change Notifier Provider'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.green[200],
              child: Consumer<ChangeNotifierProviderModel>(
                builder: (context, changeNotifierProviderModel, child) {
                  return RaisedButton(
                    child: Text('Do Something'),
                    onPressed: () {
                      changeNotifierProviderModel.doSomething();
                    },
                  );
                },
              ),
            ),

            Container(
              padding: EdgeInsets.all(35.0),
              color: Colors.blue[200],
              child: Consumer<ChangeNotifierProviderModel>(
                builder: (context, changeNotifierProviderModel, child) {
                  return Text(changeNotifierProviderModel.valueOne);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

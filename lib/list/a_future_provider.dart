import 'package:all_provider/model/future_provider_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AFutureProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureProvider(
      initialData: FutureProviderModel(someValue: 'Default Value'),
      create: (context) => someAsyncFunctionToGetFutureProviderModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Future Provider'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.green[200],
              child: Consumer<FutureProviderModel>(
                builder: (context, futureProviderModel, child) {
                  return RaisedButton(
                    child: Text('Do something'),
                    onPressed: () {
                      futureProviderModel.doSomething();
                    },
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(35),
              color: Colors.blue[200],
              child: Consumer<FutureProviderModel>(
                builder: (context, futureProviderModel, child) {
                  return Text(futureProviderModel.someValue);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<FutureProviderModel> someAsyncFunctionToGetFutureProviderModel() async {
  await Future.delayed(Duration(seconds: 3));
  return FutureProviderModel(someValue: 'New Data');
}

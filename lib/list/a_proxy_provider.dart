import 'package:all_provider/model/proxy_provider_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AProxyProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MyModel>(
          create: (context) => MyModel(),
        ),
        ProxyProvider<MyModel, AnotherModel>(
          update: (context, myModel, anotherModel) => AnotherModel(myModel),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(title: Text('Proxy Provider')),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.green[200],
                    child: Consumer<MyModel>(
                      //          <--- MyModel Consumer
                      builder: (context, myModel, child) {
                        return RaisedButton(
                          child: Text('Do something'),
                          onPressed: () {
                            myModel.doSomething('Goodbye');
                          },
                        );
                      },
                    )),
                Container(
                  padding: const EdgeInsets.all(35),
                  color: Colors.blue[200],
                  child: Consumer<MyModel>(
                    //            <--- MyModel Consumer
                    builder: (context, myModel, child) {
                      return Text(myModel.someValue);
                    },
                  ),
                ),
              ],
            ),
            Container(
                padding: const EdgeInsets.all(20),
                color: Colors.red[200],
                child: Consumer<AnotherModel>(
                  //          <--- AnotherModel Consumer
                  builder: (context, anotherModel, child) {
                    return RaisedButton(
                      child: Text('Do something else'),
                      onPressed: () {
                        anotherModel.doSomethingElse();
                      },
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}

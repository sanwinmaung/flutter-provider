import 'package:all_provider/model/value_listenable_provider_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AValueListenableProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<ValueListenableProviderModel>(
      create: (context) => ValueListenableProviderModel(),
      child: Consumer<ValueListenableProviderModel>(
        builder: (context, valueListenableProviderModel, child) {
          return ValueListenableProvider<String>.value(
            value: valueListenableProviderModel.someValue,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Value Listenable Provider'),
              ),
              body: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                      padding: const EdgeInsets.all(20),
                      color: Colors.green[200],
                      child: Consumer<ValueListenableProviderModel>( //       <--- Consumer
                        builder: (context, valueListenableProviderModel, child) {
                          return RaisedButton(
                            child: Text('Do something'),
                            onPressed: (){
                              valueListenableProviderModel.doSomething();
                            },
                          );
                        },
                      )
                  ),

                  Container(
                    padding: const EdgeInsets.all(35),
                    color: Colors.blue[200],
                    child: Consumer<String>(//           <--- String Consumer
                      builder: (context, valueListenableProviderModel, child) {
                        return Text(valueListenableProviderModel);
                      },
                    ),
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

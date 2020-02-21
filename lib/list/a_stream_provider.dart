import 'package:all_provider/model/stream_provider_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AStreamProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<StreamProviderModel>(
      initialData: StreamProviderModel(someValue: 'Default Value'),
      create: (context) => getStreamOfMyModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Stream Provider'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(20),
                color: Colors.green[200],
                child: Consumer<StreamProviderModel>(
                  builder: (context, streamProviderModel, child) {
                    return RaisedButton(
                      child: Text('Do something'),
                      onPressed: () {
                        streamProviderModel.doSomething();
                      },
                    );
                  },
                )),
            Container(
              padding: const EdgeInsets.all(35),
              color: Colors.blue[200],
              child: Consumer<StreamProviderModel>(
                builder: (context, streamProviderModel, child) {
                  return Text(streamProviderModel.someValue);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Stream<StreamProviderModel> getStreamOfMyModel() {
  return Stream<StreamProviderModel>.periodic(
          Duration(seconds: 1), (x) => StreamProviderModel(someValue: '$x'))
      .take(10);
}

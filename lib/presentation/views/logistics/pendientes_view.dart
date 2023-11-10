import 'package:flutter/material.dart';

class RemisionesEnPendiente_View extends StatefulWidget {
  const RemisionesEnPendiente_View({super.key});

  @override
  State<RemisionesEnPendiente_View> createState() => _RemisionesEnPendiente_ViewState();
}

class _RemisionesEnPendiente_ViewState extends State<RemisionesEnPendiente_View> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);


    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 66,
            width: double.infinity,
            color: Colors.blue[500],
            child: Center(child: Text( 'Remisión: $index' )),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
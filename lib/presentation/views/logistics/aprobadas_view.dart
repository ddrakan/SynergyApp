import 'package:flutter/material.dart';

class RemisionesAprobadasView extends StatefulWidget {
  const RemisionesAprobadasView({super.key});

  @override
  State<RemisionesAprobadasView> createState() => _RemisionesAprobadasViewState();
}

class _RemisionesAprobadasViewState extends State<RemisionesAprobadasView> with AutomaticKeepAliveClientMixin {
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
            color: Colors.teal[300],
            child: Center(child: Text( 'Remisión: $index' )),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
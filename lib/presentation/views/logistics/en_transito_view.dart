import 'package:flutter/material.dart';

class RemisionesEnTransito_View extends StatefulWidget {
  const RemisionesEnTransito_View({super.key});

  @override
  State<RemisionesEnTransito_View> createState() => _RemisionesEnTransitoViewState();
}

class _RemisionesEnTransitoViewState extends State<RemisionesEnTransito_View> with AutomaticKeepAliveClientMixin {
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
            color: Colors.cyan[400],
            child: Center(child: Text( 'Remisión Aprobada Nº - <Fecha>/Destino: <Agencia> $index' )),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
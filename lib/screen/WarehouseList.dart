import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:simple_flutter_app/model/GpsLocation.dart';
import 'package:simple_flutter_app/model/Warehouse.dart';

class WarehouseList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _WarehouseListState();
}

class _WarehouseListState extends State<WarehouseList> {
  Warehouse _warehouse = Warehouse(
      id: 3,
      area: 100.10,
      name: 'Super Warehouse',
      address: 'LIM TOWER III',
      contactPhone: '0967781273',
      gpsLocation: new GpsLocation(latitude: 11.11, longitude: 22.22),
      email: 'daniel.dang@lazada.com',
      imageUrl: 'https://source.unsplash.com/random');

  List<Warehouse> _data = List.from([
    new Warehouse(
        id: 3,
        area: 100.10,
        name: 'Super Warehouse',
        address: 'LIM TOWER III',
        contactPhone: '0967781273',
        gpsLocation: new GpsLocation(latitude: 11.11, longitude: 22.22),
        email: 'daniel.dang@lazada.com',
        imageUrl: 'https://source.unsplash.com/random'),
    new Warehouse(
        id: 3,
        area: 100.10,
        name: 'Super Warehouse',
        address: 'LIM TOWER III',
        contactPhone: '0967781273',
        gpsLocation: new GpsLocation(latitude: 11.11, longitude: 22.22),
        email: 'daniel.dang@lazada.com',
        imageUrl: 'https://source.unsplash.com/random'),
    new Warehouse(
        id: 3,
        area: 100.10,
        name: 'Super Warehouse',
        address: 'LIM TOWER III',
        contactPhone: '0967781273',
        gpsLocation: new GpsLocation(latitude: 11.11, longitude: 22.22),
        email: 'daniel.dang@lazada.com',
        imageUrl: 'https://source.unsplash.com/random')
  ]);

  _handleOnWarehouseChanged(Warehouse warehouse) {
    print(warehouse);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Warehouse Management"),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          children: _data.map((e) {
            return WarehouseWidget(
                warehouse: e, onWarehouseChanged: _handleOnWarehouseChanged);
          }).toList(),
        ));
  }
}

class WarehouseWidget extends StatelessWidget {
  WarehouseWidget({required this.warehouse, required this.onWarehouseChanged})
      : super(key: ObjectKey(warehouse));

  final Warehouse warehouse;
  final onWarehouseChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onWarehouseChanged(warehouse),
      leading: CircleAvatar(
        child: Text(warehouse.name[0]),
      ),
      title: Text(warehouse.address),
    );
  }
}

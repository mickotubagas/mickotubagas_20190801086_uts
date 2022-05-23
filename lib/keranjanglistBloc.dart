import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:mickotubagas_20190801086_uts/providerBloc.dart';
import 'package:mickotubagas_20190801086_uts/pangan_item.dart';
import 'package:rxdart/rxdart.dart';

class KeranjangListBloc extends BlocBase {
  KeranjangListBloc();
  var _listController = BehaviorSubject<List<PanganItem>>.seeded([]);
  KeranjangProvider provider = KeranjangProvider();
  Stream<List<PanganItem>> get listStream => _listController.stream;
  Sink<List<PanganItem>> get listSink => _listController.sink;

  addToList(PanganItem panganItem) {
    listSink.add(provider.addToList(panganItem));
  }

  removeFromList(PanganItem panganItem) {
    listSink.add(provider.removeFromList(panganItem));
    
  }

  @override
  void dispose() {
    _listController.close();
    super.dispose();
  }
}
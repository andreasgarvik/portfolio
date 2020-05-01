import 'dart:async';

import 'package:flutter/material.dart';
import '../models/cv_model.dart';
import '../widgets/cv_tile.dart';

class CvList extends StatefulWidget {
  @override
  _CvListState createState() => _CvListState();
}

class _CvListState extends State<CvList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  ListModel<CvModel> _list;
  List<CvModel> _cvList = [
    CvModel('degrees', 18.0, 'status'),
    CvModel('bachelor', 16.0, 'doing'),
    CvModel('experience', 18.0, 'length'),
    CvModel('sbanken', 16.0, '1 year'),
    CvModel('school', 18.0, 'length'),
    CvModel('queensland university of technology', 16.0, '0.5 years'),
    CvModel('western norway university of applied sciences', 16.0, '2.5 years'),
    CvModel('knowledge', 18.0, 'skill'),
    CvModel('reactjs', 16.0, 'great'),
    CvModel('nodejs', 16.0, 'great'),
    CvModel('javascript', 16.0, 'great'),
    CvModel('flutter', 16.0, 'great'),
    CvModel('github', 16.0, 'good'),
    CvModel('java', 16.0, 'good'),
    CvModel('golang', 16.0, 'good'),
    CvModel('docker', 16.0, 'good'),
    CvModel('kubernetes', 16.0, 'some'),
    CvModel('linux', 16.0, 'some'),
  ];
  Timer timer;

  @override
  void initState() {
    super.initState();
    _list = ListModel<CvModel>(listKey: _listKey);
    timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      _insert();
    });
  }

  // Used to build list items that haven't been removed.
  Widget _buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return CvTile(
      animation: animation,
      model: _list[index],
    );
  }

// Insert the "next item" into the list model.
  void _insert() {
    final index = _list.length;
    if (index != _cvList.length) {
      _list.insert(
        index,
        _cvList[index],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0, left: 30.0, right: 30.0, bottom: 50.0),
      child: AnimatedList(
        key: _listKey,
        itemBuilder: _buildItem,
      ),
    );
  }
}

class ListModel<E> {
  ListModel({
    @required this.listKey,
  }) : _items = [];

  final GlobalKey<AnimatedListState> listKey;
  final List<E> _items;

  AnimatedListState get _animatedList => listKey.currentState;

  void insert(int index, E item) {
    _items.insert(index, item);
    _animatedList.insertItem(index);
  }

  int get length => _items.length;

  E operator [](int index) => _items[index];

  int indexOf(E item) => _items.indexOf(item);
}

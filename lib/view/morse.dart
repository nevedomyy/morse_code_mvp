import 'package:flutter/material.dart';
import '../presenter/presenter.dart';
import 'morse_view.dart';
import 'button.dart';
import 'window.dart';


class Morse extends StatefulWidget {
  @override
  _MorseState createState() => _MorseState();
}

class _MorseState extends State<Morse> implements MorseView{
  final List<String> _left = ['K','J','I','H','G','F','E','D','C','B'];
  final List<String> _top = ['L','M','N','O','P'];
  final List<String> _right = ['Q','R','S','T','U','V','W','X','Y','Z'];
  List<Widget> _leftColumn;
  List<Widget> _topRow;
  List<Widget> _rightColumn;
  Presenter _presenter;
  String _text = '';

  @override
  initState(){
    super.initState();
    _presenter = Presenter(this);
    _leftColumn = List();
    _topRow = List();
    _rightColumn = List();
    _left.forEach((item) => _leftColumn.add(Btn(item, _presenter)));
    _top.forEach((item) => _topRow.add(Btn(item, _presenter)));
    _right.forEach((item) => _rightColumn.add(Btn(item, _presenter)));
  }

  updateView(String data) async{
    setState(() {
      _text += data;
    });
  }

  clearView() async{
    setState(() {
      _text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: SafeArea(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(53.0),
              child: CustomPaint(
                size: Size.infinite,
                painter: Window(),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(60.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                child: SizedBox.expand(
                  child: Text(
                    _text,
                    style: Theme.of(context).textTheme.body1,
                  ),
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: _leftColumn
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: _topRow
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Btn('A', _presenter),
                            SizedBox(width: 100.0),
                            Btn('<..', _presenter)
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: _rightColumn
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../presenter/presenter.dart';


class Btn extends StatelessWidget{
  final Presenter _presenter;
  final String _txt;

  Btn(this._txt, this._presenter);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _txt=='<..' ? _presenter.clear() : _presenter.onTap(_txt),
      child: Text(
        _txt,
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}
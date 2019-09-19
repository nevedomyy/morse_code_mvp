import '../view/morse_view.dart';
import '../model/model.dart';


class Presenter{
  Model _model;
  MorseView _view;

  Presenter(this._view){
    _model = Model();
  }

  onTap(String unit) {
    String data = _model.getData(unit);
    _view.updateView(data);
  }

  clear(){
    _view.clearView();
  }
}
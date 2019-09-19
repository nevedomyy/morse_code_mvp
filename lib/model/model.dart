class Model{
  String _result = '';

  String getData(String unit){
    switch(unit){
      case 'A': _result = '.- '; break;
      case 'B': _result = '-... '; break;
      case 'C': _result = '-.-. '; break;
      case 'D': _result = '-.. '; break;
      case 'E': _result = '. '; break;
      case 'F': _result = '..-. '; break;
      case 'G': _result = '--. '; break;
      case 'H': _result = '.... '; break;
      case 'I': _result = '.. '; break;
      case 'J': _result = '.--- '; break;
      case 'K': _result = '-.- '; break;
      case 'L': _result = '.-.. '; break;
      case 'M': _result = '-- '; break;
      case 'N': _result = '-. '; break;
      case 'O': _result = '--- '; break;
      case 'P': _result = '.--. '; break;
      case 'Q': _result = '--.- '; break;
      case 'R': _result = '.-. '; break;
      case 'S': _result = '... '; break;
      case 'T': _result = '- '; break;
      case 'U': _result = '..- '; break;
      case 'V': _result = '...- '; break;
      case 'W': _result = '.-- '; break;
      case 'X': _result = '-..- '; break;
      case 'Y': _result = '-.-- '; break;
      case 'Z': _result = '--.. '; break;
    }
    return _result;
  }
}
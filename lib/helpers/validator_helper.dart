import 'package:calculator_floor/core/constants.dart';

class ValidatorHelper {
  /*static String isNotEmptyValue(String text) {
    return text.isEmpty ? 'Campo obrigatório' : null;
  }

  static String isZero(String text){
    return text == '0' ? 'Valor zero não é permitido' : null;
  }
  */
  static String inputValidator(String text){
    if (text.isEmpty) return kValidateNull;
    if (double.parse(text.replaceAll(',', '.')) <= 0) return kValidateZero;
    return null;
  }
}

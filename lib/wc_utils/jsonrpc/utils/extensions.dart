import 'package:wc_dart_v2/wc_utils/jsonrpc/utils/constants.dart';
import 'package:wc_dart_v2/wc_utils/jsonrpc/utils/enums.dart';

extension Eip155MethodsStringX on String {
  Eip155Methods? toEip155Method() {
    final entries = methods.entries.where((element) => element.value == this);
    return (entries.isNotEmpty) ? entries.first.key : null;
  }
}

import 'package:wc_dart_v2/core/store/store.dart';
import 'package:wc_dart_v2/sign/sign-client/client/constants.dart';
import 'package:wc_dart_v2/sign/sign-client/session/constants.dart';
import 'package:wc_dart_v2/sign/sign-client/session/models.dart';

class Session extends Store<String, SessionStruct> {
  Session({required super.core, required super.logger})
      : super(
          name: SESSION_CONTEXT,
          storagePrefix: SIGN_CLIENT_STORAGE_PREFIX,
          fromJson: (v) => SessionStruct.fromJson(v),
          toJson: (v) => v.toJson(),
        );
}

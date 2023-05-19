import 'package:wc_dart_v2/core/store/store.dart';
import 'package:wc_dart_v2/sign/sign-client/client/constants.dart';
import 'package:wc_dart_v2/sign/sign-client/pending_request/constants.dart';
import 'package:wc_dart_v2/sign/sign-client/pending_request/models.dart';

class PendingRequest extends Store<int, PendingRequestStruct> {
  PendingRequest({required super.core, required super.logger})
      : super(
          name: REQUEST_CONTEXT,
          storagePrefix: SIGN_CLIENT_STORAGE_PREFIX,
          fromJson: (v) => PendingRequestStruct.fromJson(v),
          toJson: (v) => v.toJson(),
        );
}

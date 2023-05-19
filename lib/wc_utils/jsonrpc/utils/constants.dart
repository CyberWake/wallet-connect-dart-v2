import 'package:wc_dart_v2/wc_utils/jsonrpc/models/models.dart';
import 'package:wc_dart_v2/wc_utils/jsonrpc/utils/enums.dart';

const PARSE_ERROR = "PARSE_ERROR";
const INVALID_REQUEST = "INVALID_REQUEST";
const METHOD_NOT_FOUND = "METHOD_NOT_FOUND";
const INVALID_PARAMS = "INVALID_PARAMS";
const INTERNAL_ERROR = "INTERNAL_ERROR";
const SERVER_ERROR = "SERVER_ERROR";

const RESERVED_ERROR_CODES = [-32700, -32600, -32601, -32602, -32603];
const SERVER_ERROR_CODE_RANGE = [-32000, -32099];

const STANDARD_ERROR_MAP = {
  PARSE_ERROR: ErrorResponse(code: -32700, message: "Parse error"),
  INVALID_REQUEST: ErrorResponse(code: -32600, message: "Invalid Request"),
  METHOD_NOT_FOUND: ErrorResponse(code: -32601, message: "Method not found"),
  INVALID_PARAMS: ErrorResponse(code: -32602, message: "Invalid params"),
  INTERNAL_ERROR: ErrorResponse(code: -32603, message: "Internal error"),
  SERVER_ERROR: ErrorResponse(code: -32000, message: "Server error"),
};

const Map<Eip155Methods, String> methods = {
  Eip155Methods.personalSign: 'personal_sign',
  Eip155Methods.ethSign: 'eth_sign',
  Eip155Methods.ethSignTransaction: 'eth_signTransaction',
  Eip155Methods.ethSignTypedData: 'eth_signTypedData',
  Eip155Methods.ethSignTypedDataV3: 'eth_signTypedData_v3',
  Eip155Methods.ethSignTypedDataV4: 'eth_signTypedData_v4',
  Eip155Methods.ethSendRawTransaction: 'eth_sendRawTransaction',
  Eip155Methods.ethSendTransaction: 'eth_sendTransaction',
  Eip155Methods.walletSwitchEthereumChain: 'eth_switchEthereumChain'
};

const DEFAULT_ERROR = SERVER_ERROR;

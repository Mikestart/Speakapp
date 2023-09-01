import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SigninPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for signinEmail widget.
  TextEditingController? signinEmailController;
  String? Function(BuildContext, String?)? signinEmailControllerValidator;
  // State field(s) for signinPassword widget.
  TextEditingController? signinPasswordController;
  late bool signinPasswordVisibility;
  String? Function(BuildContext, String?)? signinPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    signinPasswordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    signinEmailController?.dispose();
    signinPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

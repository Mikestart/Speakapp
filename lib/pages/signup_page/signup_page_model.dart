import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for signupName widget.
  TextEditingController? signupNameController;
  String? Function(BuildContext, String?)? signupNameControllerValidator;
  // State field(s) for signupEmail widget.
  TextEditingController? signupEmailController;
  String? Function(BuildContext, String?)? signupEmailControllerValidator;
  // State field(s) for signupPassword widget.
  TextEditingController? signupPasswordController;
  late bool signupPasswordVisibility;
  String? Function(BuildContext, String?)? signupPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    signupPasswordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    signupNameController?.dispose();
    signupEmailController?.dispose();
    signupPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

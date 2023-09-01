import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DescriptionModal2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for descriptiofield widget.
  TextEditingController? descriptiofieldController1;
  String? Function(BuildContext, String?)? descriptiofieldController1Validator;
  // State field(s) for descriptiofield widget.
  TextEditingController? descriptiofieldController2;
  String? Function(BuildContext, String?)? descriptiofieldController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    descriptiofieldController1?.dispose();
    descriptiofieldController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

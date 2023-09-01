import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/modal_text2_admin_mobile_widget.dart';
import '/components/modal_text2_admin_widget.dart';
import '/components/modal_text_admin_mobile_widget.dart';
import '/components/modal_text_admin_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/company_modal/company_modal_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class CompanyProfilePageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int? index = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  // State field(s) for Row widget.
  ScrollController? rowController;
  // State field(s) for TabBarmobile widget.
  TabController? tabBarmobileController;
  int get tabBarmobileCurrentIndex =>
      tabBarmobileController != null ? tabBarmobileController!.index : 0;

  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for ListView_tablette_tel_pending widget.
  ScrollController? listViewTabletteTelPending;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for ListView_tablette_tel_completed widget.
  ScrollController? listViewTabletteTelCompleted;
  // State field(s) for TabBarDesktop widget.
  TabController? tabBarDesktopController;
  int get tabBarDesktopCurrentIndex =>
      tabBarDesktopController != null ? tabBarDesktopController!.index : 0;

  // State field(s) for GridView_pc_pending widget.
  ScrollController? gridViewPcPending;
  // State field(s) for GridView_pc_completed widget.
  ScrollController? gridViewPcCompleted;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    rowController = ScrollController();
    columnController1 = ScrollController();
    listViewTabletteTelPending = ScrollController();
    columnController2 = ScrollController();
    listViewTabletteTelCompleted = ScrollController();
    gridViewPcPending = ScrollController();
    gridViewPcCompleted = ScrollController();
  }

  void dispose() {
    unfocusNode.dispose();
    rowController?.dispose();
    tabBarmobileController?.dispose();
    columnController1?.dispose();
    listViewTabletteTelPending?.dispose();
    columnController2?.dispose();
    listViewTabletteTelCompleted?.dispose();
    tabBarDesktopController?.dispose();
    gridViewPcPending?.dispose();
    gridViewPcCompleted?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

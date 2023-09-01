import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/modal_text_client2_mobile_widget.dart';
import '/components/modal_text_client2_widget.dart';
import '/components/modal_text_client_mobile_widget.dart';
import '/components/modal_text_client_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/description_modal/description_modal_widget.dart';
import '/pages/description_modal2/description_modal2_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DescriptionPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for ListView_tel_tablette_pending widget.
  ScrollController? listViewTelTablettePending;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for ListView_tel_tablette_completed widget.
  ScrollController? listViewTelTabletteCompleted;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for GridView widget.
  ScrollController? gridViewController1;
  // State field(s) for GridView widget.
  ScrollController? gridViewController2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    columnController1 = ScrollController();
    listViewTelTablettePending = ScrollController();
    columnController2 = ScrollController();
    listViewTelTabletteCompleted = ScrollController();
    gridViewController1 = ScrollController();
    gridViewController2 = ScrollController();
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController1?.dispose();
    columnController1?.dispose();
    listViewTelTablettePending?.dispose();
    columnController2?.dispose();
    listViewTelTabletteCompleted?.dispose();
    tabBarController2?.dispose();
    gridViewController1?.dispose();
    gridViewController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

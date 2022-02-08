import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../profile/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          'assets/images/TEEN-NFTS--fewocious-videoSixteenByNineJumbo1600.jpg',
                          width: 450,
                          height: 1000,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 325, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Sign in with your wallet',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.title1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF030000),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Text(
                              'Sign in with one of available wallet\n providers or create a new wallet.',
                              style: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF252525),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'MateMask Wallet',
                                    options: FFButtonOptions(
                                      width: 400,
                                      height: 50,
                                      color: FlutterFlowTheme.primaryColor,
                                      textStyle:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.tertiaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      elevation: 1,
                                      borderSide: BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 1,
                                      ),
                                      borderRadius: 40,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'CoinBase Wallet',
                                    options: FFButtonOptions(
                                      width: 400,
                                      height: 50,
                                      color: FlutterFlowTheme.primaryColor,
                                      textStyle:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.tertiaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      elevation: 1,
                                      borderSide: BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 1,
                                      ),
                                      borderRadius: 40,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Mobile Wallet',
                                    options: FFButtonOptions(
                                      width: 400,
                                      height: 50,
                                      color: FlutterFlowTheme.primaryColor,
                                      textStyle:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.tertiaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      elevation: 1,
                                      borderSide: BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 1,
                                      ),
                                      borderRadius: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.tertiaryColor,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 70, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomePageWidget(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    '[NFTAI]',
                                    style: FlutterFlowTheme.title1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF030000),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: Text(
                                    'Marketplace',
                                    style: FlutterFlowTheme.title1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF030000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(500, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 20, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type:
                                                PageTransitionType.bottomToTop,
                                            duration:
                                                Duration(milliseconds: 300),
                                            reverseDuration:
                                                Duration(milliseconds: 300),
                                            child: LoginPageWidget(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Login',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.title1.override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF030000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.tertiaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ProfileWidget(),
                                              ),
                                            );
                                          },
                                          child: Icon(
                                            Icons.person,
                                            color: Color(0xFF060000),
                                            size: 35,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

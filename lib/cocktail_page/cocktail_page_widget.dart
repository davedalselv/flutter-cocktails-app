import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CocktailPageWidget extends StatefulWidget {
  CocktailPageWidget({
    Key key,
    this.artPiece,
  }) : super(key: key);

  final dynamic artPiece;

  @override
  _CocktailPageWidgetState createState() => _CocktailPageWidgetState();
}

class _CocktailPageWidgetState extends State<CocktailPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(),
              child: Image.network(
                getJsonField(
                    widget.artPiece, r'''$.drinks[:1].strDrinkThumb'''),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 350,
                    decoration: BoxDecoration(),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.6),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                          shape: BoxShape.rectangle,
                        ),
                        alignment:
                            AlignmentDirectional(0, 0.050000000000000044),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 10, 40, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    120, 0, 120, 40),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Divider(
                                      height: 5,
                                      thickness: 3,
                                      color: Color(0xFFDDDDDD),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                getJsonField(widget.artPiece,
                                        r'''$.drinks[:1].strDrink''')
                                    .toString(),
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Open Sans',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 2, 0, 0),
                                      child: SelectableText(
                                        getJsonField(widget.artPiece,
                                                r'''$.drinks[:1].strAlcoholic''')
                                            .toString(),
                                        textAlign: TextAlign.end,
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Open Sans',
                                          color: Color(0xFFB3B4B8),
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    if (getJsonField(widget.artPiece,
                                                r'''$.drinks[:1].strIBA''')
                                            .toString() !=
                                        'null')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 6, 0),
                                        child: SelectableText(
                                          getJsonField(widget.artPiece,
                                                  r'''$.drinks[:1].strIBA''')
                                              .toString(),
                                          style: FlutterFlowTheme.bodyText2
                                              .override(
                                            fontFamily: 'Open Sans',
                                            color: Color(0xFFB3B4B8),
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      )
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Divider(
                                    height: 30,
                                    thickness: 0.5,
                                    color: FlutterFlowTheme.tertiaryColor,
                                  )
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (getJsonField(widget.artPiece,
                                              r'''$.drinks[:1].strMeasure1''')
                                          .toString() !=
                                      "null")
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strMeasure1''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ' - ',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF6A7079),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strIngredient1''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  if (getJsonField(widget.artPiece,
                                              r'''$.drinks[:1].strMeasure2''')
                                          .toString() !=
                                      "null")
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strMeasure2''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ' - ',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF6A7079),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strIngredient2''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  if (getJsonField(widget.artPiece,
                                              r'''$.drinks[:1].strMeasure3''')
                                          .toString() !=
                                      "null")
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strMeasure3''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ' - ',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF6A7079),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strIngredient3''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  if (getJsonField(widget.artPiece,
                                              r'''$.drinks[:1].strMeasure4''')
                                          .toString() !=
                                      "null")
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strMeasure4''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ' - ',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF6A7079),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strIngredient4''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  if (getJsonField(widget.artPiece,
                                              r'''$.drinks[:1].strMeasure5''')
                                          .toString() !=
                                      "null")
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strMeasure5''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ' - ',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF6A7079),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strIngredient5''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  if (getJsonField(widget.artPiece,
                                              r'''$.drinks[:1].strMeasure6''')
                                          .toString() !=
                                      "null")
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strMeasure6''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ' - ',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF6A7079),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strIngredient6''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  if (getJsonField(widget.artPiece,
                                              r'''$.drinks[:1].strMeasure7''')
                                          .toString() !=
                                      "null")
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strMeasure7''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ' - ',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF6A7079),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strIngredient7''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  if (getJsonField(widget.artPiece,
                                              r'''$.drinks[:1].strMeasure8''')
                                          .toString() !=
                                      "null")
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strMeasure8''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ' - ',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF6A7079),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strIngredient8''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  if (getJsonField(widget.artPiece,
                                              r'''$.drinks[:1].strMeasure9''')
                                          .toString() !=
                                      "null")
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strMeasure9''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ' - ',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF6A7079),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strIngredient9''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  if (getJsonField(widget.artPiece,
                                              r'''$.drinks[:1].strMeasure10''')
                                          .toString() !=
                                      "null")
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strMeasure10''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ' - ',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF6A7079),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strIngredient10''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  if (getJsonField(widget.artPiece,
                                              r'''$.drinks[:1].strMeasure11''')
                                          .toString() !=
                                      "null")
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strMeasure11''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ' - ',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF6A7079),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strIngredient11''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  if (getJsonField(widget.artPiece,
                                              r'''$.drinks[:1].strMeasure12''')
                                          .toString() !=
                                      "null")
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strMeasure12''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          ' - ',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Playfair Display',
                                            color: Color(0xFF6A7079),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: SelectableText(
                                            getJsonField(widget.artPiece,
                                                    r'''$.drinks[:1].strIngredient12''')
                                                .toString(),
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF6A7079),
                                              fontSize: 16,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 100),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Divider(
                                      height: 30,
                                      thickness: 0.5,
                                      color: FlutterFlowTheme.tertiaryColor,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 2, 0, 0),
                                      child: SelectableText(
                                        getJsonField(widget.artPiece,
                                                r'''$.drinks[:1].strInstructions''')
                                            .toString(),
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Open Sans',
                                          color: Color(0xFF6A7079),
                                          fontSize: 16,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 40, 0, 0),
              child: InkWell(
                onTap: () async {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xFFE1E1E1),
                  size: 30,
                ),
              ),
            )
          ],
        ));
  }
}

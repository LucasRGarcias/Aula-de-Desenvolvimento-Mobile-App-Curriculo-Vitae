import 'package:cv/models/descriptions-models.dart';
import 'package:flutter/material.dart';

class ListPersonPage extends StatefulWidget {

  final PersonalData personalData;
  final String title = "Curriculo Vitae";  
  ListPersonPage({@required this.personalData});
  
  @override
  _ListPersonPageState createState() => _ListPersonPageState(personalData: this.personalData);
}

class _ListPersonPageState extends State<ListPersonPage> {  
  final PersonalData personalData;

  Color _colorOn = Colors.deepPurple;
  Color _colorOff = Colors.grey;
  Color _starColor1;
  Color _starColor2;
  Color _starColor3;
  Color _starColor4;
  Color _starColor5;

  _ListPersonPageState({@required this.personalData}) {
    _starColor1 = _colorOff;
    _starColor2 = _colorOff; 
    _starColor3 = _colorOff;
    _starColor4 = _colorOff;
    _starColor5 = _colorOff;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(    
              width: 240,
              height:250,         
              decoration:BoxDecoration(
               shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,                  
                  image: NetworkImage(
                    personalData.foto
                  ),
                ),
              ),
               
              ),
            Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Text(    
                  personalData.cpf,             
                  textAlign: TextAlign.justify,
                  
                )),
            //Image.asset('lib/assets/imagens/wowalianca.jpg'),

            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                personalData.nome,
                style: Theme.of(context).textTheme.headline5
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.star,
                        color: _starColor1,
                      ),
                      onPressed: () {
                        setState(() {
                          _starColor1 = (_starColor1 == _colorOff)
                              ? _colorOn
                              : _colorOff;

                          if (_starColor1 == _colorOff) {
                            _starColor2 = _colorOff;
                            _starColor3 = _colorOff;
                            _starColor4 = _colorOff;
                            _starColor5 = _colorOff;
                          }
                        });
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.star,
                        color: _starColor2,
                      ),
                      onPressed: () {
                        setState(() {
                          _starColor2 = (_starColor2 == _colorOff)
                              ? _colorOn
                              : _colorOff;

                          if (_starColor2 == _colorOn) {
                            _starColor1 = _starColor2;
                          }

                          if (_starColor2 == _colorOff) {
                            _starColor3 = _colorOff;
                            _starColor4 = _colorOff;
                            _starColor5 = _colorOff;
                          }
                        });
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.star,
                        color: _starColor3,
                      ),
                      onPressed: () {
                        setState(() {
                          _starColor3 = (_starColor3 == _colorOff)
                              ? _colorOn
                              : _colorOff;

                          if (_starColor3 == _colorOn) {
                            _starColor1 = _starColor3;
                            _starColor2 = _starColor3;
                          }

                          if (_starColor3 == _colorOff) {
                            _starColor4 = _colorOff;
                            _starColor5 = _colorOff;
                          }
                        });
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.star,
                        color: _starColor4,
                      ),
                      onPressed: () {
                        setState(() {
                          _starColor4 = (_starColor4 == _colorOff)
                              ? _colorOn
                              : _colorOff;

                          if (_starColor4 == _colorOn) {
                            _starColor1 = _starColor4;
                            _starColor2 = _starColor4;
                            _starColor3 = _starColor4;
                          }

                          if (_starColor4 == _colorOff) {
                            _starColor5 = _colorOff;
                          }
                        });
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.star,
                        color: _starColor5,
                      ),
                      onPressed: () {
                        setState(() {
                          _starColor5 = (_starColor5 == _colorOff)
                              ? _colorOn
                              : _colorOff;

                          if (_starColor5 == _colorOn) {
                            _starColor1 = _starColor5;
                            _starColor2 = _starColor5;
                            _starColor3 = _starColor5;
                            _starColor4 = _starColor5;
                          }
                        });
                      })
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Text(
                  personalData.resumo,
                  textAlign: TextAlign.justify,
                )),
          ],
        ),
      ),
    );
  }
}

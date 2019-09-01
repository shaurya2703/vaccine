import 'package:flutter/material.dart';
import 'package:healthy_wealthy/sideDraw.dart';
// import './Classes/strings.dart';
// import './CustomWidgets/custom_card.dart';

class ChildForm extends StatefulWidget {
  @override
  _ChildFormState createState() => _ChildFormState();
}

class _ChildFormState extends State<ChildForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Map<String, String> _formData = {
    'name': null,
    'dob': null,
    'gender': null
  };
  final _nameFocusNode = FocusNode();

  Widget _buildNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Child Name', filled: true, fillColor: Colors.white),
      onSaved: (String value) {
        _formData['name'] = value;
      },
    );
  }

  Widget _buildDobTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Child Date of Birth',
          filled: true,
          fillColor: Colors.white),
      onSaved: (String value) {
        _formData['dob'] = value;
      },
    );
  }

  _buildSideDrawer(BuildContext context) {
    return SideDraw();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: _buildSideDrawer(context),
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Manage Children'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Name',
              ),
              Tab(
                icon: Icon(Icons.access_time),
                text: 'Date of Birth',
              ),
              Tab(
                icon: Icon(Icons.account_circle),
                text: 'Gender',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              children: <Widget>[
                _buildNameTextField(),
                IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.purple,
                    ),
                    onPressed: () {})
              ],
            ),
            Column(
              children: <Widget>[
                _buildDobTextField(),
                IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.purple,
                    ),
                    onPressed: () {} )
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  // IconButton(icon: Icon(Icons.),),
                  Text('Male'),
                  Icon(Icons.accessibility_new , size: 150, color: Colors.purple,),
                  Text('Female')
                ],
                ),
                RaisedButton(
                  color: Colors.purple,
                  child: Text('Save'),
                  onPressed: (){

                  },                
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

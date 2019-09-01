import 'package:flutter/material.dart';

class AlertsDashboard extends StatefulWidget {
  @override
  _AlertsDashboardState createState() => _AlertsDashboardState();
}

class _AlertsDashboardState extends State<AlertsDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Alerts"),
      ),
      body: ListView(
        children: <Widget>[
          _buildAlertCard('August 2019',
              "Prevention and Control of Seasonal Influenza with Vaccines"),
          _buildAlertCard('August 2019',
              "Human Papillomavirus Vaccination for Adults: Updated Recommendations of the Advisory Committee on Immunization Practices"),
          _buildAlertCard('August 2019',
              "Updated Vaccine Information Statements for live attenuated influenza, inactivated influenza, meningococcal ACWY, meningococcal B, MMR, MMRV, varicella, hepatitis B, and Japanese encephalitis have been posted."),
          _buildAlertCard('July 2019',
              "Japanese Encephalitis Vaccine: Recommendations of the Advisory Committee on Immunization Practices"),
          _buildAlertCard('Feburary 2019',
              "Recommendations of the Advisory Committee on Immunization Practices for Use of Hepatitis A Vaccine for Persons Experiencing Homelessness"),
          _buildAlertCard('Feburary 2019',
              "2019 U.S. Recommended Immunization Schedules for Children and Adolescents Age 18 Years or Younger"),
          _buildAlertCard('Feburary 2019',
              "2019 U.S. Recommended Immunization Schedule for Adults Aged 19 Years or Older"),
        ],
      ),
    );
  }

  Widget _buildAlertCard(String agency, String alertText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(agency),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: Text(
                  alertText,
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

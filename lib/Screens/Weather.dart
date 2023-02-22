import 'package:flutter/material.dart';
import '../Components/extraInfo.dart';
import '../Constants.dart' as constants;

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: constants.dayPrimary,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: size.height * 0.15,
            child: Text(
              'Location',
              style: TextStyle(
                fontSize: size.width * 0.1,
                fontWeight: FontWeight.w400,
                //fontFamily: 'SpaceMono',
                color: constants.nightPrimary,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.195,
            child: Text(
              'Day & Time',
              style: TextStyle(
                fontSize: size.width * 0.07,
                fontWeight: FontWeight.w400,
                fontFamily: 'SpaceMono',
                color: constants.nightPrimary,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.3,
            child: Container(
              width: size.width * 0.6,
              height: size.height * 0.23,
              color: Colors.greenAccent,
            ),
          ),
          Positioned(
              top: size.height * 0.6,
              child: Column(
                children: [
                  Text(
                    '22 c',
                    style: TextStyle(
                      fontFamily: 'SpaceMono',
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                      fontSize: size.width * 0.16,
                      color: constants.nightPrimary,
                    ),
                  ),
                  Text(
                    'Weather desc',
                    style: TextStyle(
                      fontFamily: 'SpaceMono',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                      fontSize: size.width * 0.06,
                      color: constants.nightPrimary,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height*0.05),
                    child: Container(
                      width: 120,
                      color: constants.nightPrimary,
                      height: 1,
                    ),
                  ),
                ],
              )),
          Positioned(
            bottom: size.height * 0.03,
            child: Row(
              children: [
                extraInfo(
                  size: size,
                  icon: Icons.thermostat,
                  infoName: 'Max Temp',
                  value: 'value',
                ),
                Container(
                  width: 1,
                  color: constants.nightPrimary,
                  height: 30,
                ),
                extraInfo(
                  size: size,
                  icon: Icons.air_outlined,
                  infoName: 'Windspeed',
                  value: 'value',
                ),
                Container(
                  width: 1,
                  color: constants.nightPrimary,
                  height: 30,
                ),
                extraInfo(
                  size: size,
                  icon: Icons.percent,
                  infoName: 'Humidity',
                  value: 'value',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

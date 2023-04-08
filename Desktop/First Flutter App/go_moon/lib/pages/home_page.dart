// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdownwidgets.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  late double _deviceHeight, _devicewidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _devicewidth,
          padding: EdgeInsets.symmetric(
              horizontal: _devicewidth * 0.05, vertical: _deviceHeight * 0.05),
          color: Colors.black,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _pageTitle(),
                  _bookRideWidget(),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _pictureWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _pictureWidget() {
    return Stack(
      children: [
        SizedBox(
          height: _deviceHeight * 0.5,
          width: _devicewidth * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Image(image: AssetImage("assets/images/astro_moon.png")),
            ],
          ),
        ),
      ],
    );
  }

  Widget _pageTitle() {
    return Container(
        color: Colors.black,
        child: const Text("#Go Moon",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 70,
                fontWeight: FontWeight.w800)));
  }

  Widget _destinationationDropDownWidget() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: (CustomDropdownWidgets(
        values: const ['James Web  ', 'Prenuer Station'],
        width: _devicewidth,
      )),
    );
  }

  Widget _bookRideWidget() {
    return (SizedBox(
      height: _deviceHeight * 0.25,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _destinationationDropDownWidget(),
            _travellersInformationWidget(),
            _ridebutton(),
          ]),
    ));
  }

  Widget _travellersInformationWidget() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (CustomDropdownWidgets(
            values: const ['1  ', '2', '3', '4', '5'],
            width: _devicewidth * 0.45,
          )),
          (CustomDropdownWidgets(
            values: const [
              'Economy',
              'Business',
              'First',
              'Second',
            ],
            width: _devicewidth * 0.40,
          )),
        ],
      ),
    );
  }

  Widget _ridebutton() {
    return (Container(
      margin: EdgeInsets.only(
        bottom: _deviceHeight * 0.01,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: _devicewidth,
      child: MaterialButton(
        onPressed: () => {},
        child: const Text(
          "Book Ride",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    ));
  }
}

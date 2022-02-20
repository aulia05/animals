import 'package:animals/manimals.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget{

  final AnimalsModel animal;
  final int action;

  const DetailPage({Key key, @required this.animal, @required this.action}) : super(key: key);
  
  @override
  State<StatefulWidget> createState() {
    return DetailState();
  }
}

class DetailState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0.0,
            right: 0.0,
            top: 0.0,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              color: Colors.green.shade100,
              padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 80.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.action == 10 ? 'Mamalia' : widget.action == 20 ? 'Reptile' : widget.action == 30 ? 'Pisces' : widget.action == 40 ? 'Amfibi' : 'Aves',
                    style: TextStyle(
                      color: Colors.grey.shade700
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    widget.animal.name,
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade800
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(55.0), topRight: Radius.circular(55.0)),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                color: Colors.white,
                padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        widget.animal.name,
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal.shade800
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Text(
                      'Apa itu ${widget.animal.name}?',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade200
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Text(
                              widget.animal.desc,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.grey.shade600,
                                height: 2.0,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
                )
              ),
            )
          ),
          Positioned(
            right: 32.0,
            top:  MediaQuery.of(context).size.height * 0.2,
            child: ClipOval(
              child: Image.asset(
                widget.animal.img,
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.width * 0.45,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

}
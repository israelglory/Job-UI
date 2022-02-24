// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:job_ui_kit/data.dart';

class JobDetails extends StatelessWidget {
  final Jobs jobs;
  JobDetails({Key? key, required this.jobs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(18.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black,
                  size: 15,
                ),
              ),
            ),
          ),
          title: Text(
            'Job Details',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            Container(
              child: Icon(
                Icons.share,
                size: 20,
                color: Colors.black,
              ),
            ),
          ],
          centerTitle: true,
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 10.0,
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      child: Image.asset(
                        jobs.image,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    jobs.companyName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 5.0),
                        child: Text(
                          'Full Stack',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                      Text(
                        '\u2022',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          jobs.stack,
                          style: TextStyle(
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.group,
                              color: Color(0xff008080),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Text(
                                '5 Members',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          thickness: 2,
                          width: 10,
                          color: Colors.grey.shade300,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.favorite_border_outlined,
                              color: Color(0xff008080),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Text(
                                '40K Likes',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          thickness: 2,
                          width: 10,
                          color: Colors.grey.shade300,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xff008080),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Text(
                                  'Nigeria',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Job Description',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  jobs.longdescription,
                  maxLines: 8,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Skills',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\u2022',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff008080),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        'UI/UX Designer',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\u2022',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff008080),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        'UI/UX Designer',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\u2022',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff008080),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        'UI/UX Designer',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\u2022',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff008080),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        'UI/UX Designer',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\u2022',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff008080),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        'UI/UX Designer',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\u2022',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff008080),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        'UI/UX Designer',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.all(15.0),
          height: 80.0,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Card(
                  elevation: 5.0,
                  shadowColor: Color(0xff008080),
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.bookmark,
                      color: Color(0xff008080),
                      size: 30,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Color(0xff008080),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  height: 50.0,
                  child: Center(
                    child: Text(
                      'Apply Now',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        elevation: 0,
      ),
    );
  }
}

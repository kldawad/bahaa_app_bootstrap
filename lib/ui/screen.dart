import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _getBootstrap(Widget widget) {
    return BootstrapRow(
      children: [
        BootstrapCol(child: widget),
      ],
    );
  }

  String _getOffset(
    int xs,
    int sm,
    int md,
    int lg,
    int xl,
  ) {
    return 'offset-$xs offset-sm-$sm offset-md-$md offset-lg-$lg offset-xl-$xl';
  }

  String _getSize(
    int xs,
    int sm,
    int md,
    int lg,
    int xl,
  ) {
    return 'col-$xs col-sm-$sm col-md-$md col-lg-$lg col-xl-$xl';
  }

  @override
  void initState() {
    super.initState();
    bootstrapGridParameters(
      gutterSize: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    print(_width);
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: BootstrapContainer(
          fluid: true,
          decoration: BoxDecoration(color: Colors.blue),
          children: [
            BootstrapRow(
              height: 200,
              decoration: BoxDecoration(color: Colors.black),
              children: <BootstrapCol>[
                BootstrapCol(
                  sizes: _getSize(12, 12, 12, 12, 12),
                  child: Container(
                    width: _width,
                    color: Colors.pink,
                    height: 200,
                  ),
                ),
              ],
            ),
            BootstrapRow(
              decoration: BoxDecoration(color: Colors.black),
              height: 100,
              children: [
                BootstrapCol(
                  sizes: _getSize(6, 6, 3, 3, 3),
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    color: Colors.blue,
                    child: Image.asset('assets/images/copy_301191988.png'),
                  ),
                ),
                BootstrapCol(
                  sizes: _getSize(6, 6, 6, 6, 6),
                  offsets: _getOffset(0, 0, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "الطلاب الأوائل",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      GridView.builder(
                          itemCount: 6,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            crossAxisCount: 3,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              color: Colors.orange,
                              child: Center(
                                child: Text("hello"),
                              ),
                            );
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Press Here"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

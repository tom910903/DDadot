import 'package:flutter/material.dart';
import 'package:ddadot/common/utils/utils.dart';

class AgreementScreen extends StatefulWidget {
  AgreementScreen({required this.title, required this.filePath});

  String title;
  String filePath;

  @override
  State<AgreementScreen> createState() => _AgreementScreenState();
}

class _AgreementScreenState extends State<AgreementScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: FutureBuilder(
                  future: Utils.loadTextFile(widget.filePath),
                  builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    String text = snapshot.data.toString();
                    return Text(text);
                  },
                ),
              ),
            ),
            CheckboxListTile(
              title: Text("title text"),
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = !_isChecked;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
            ),
            TextButton(child: Text('다음'),
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}

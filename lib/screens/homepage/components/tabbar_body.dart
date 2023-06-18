import 'package:byte_sigma/models/view_model/common_data_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabBarBody extends StatelessWidget {
  int? length;
  TabBarBody({super.key, this.length});

  @override
  Widget build(BuildContext context) {
    return Consumer<CommonDataViewModel>(builder: (context, cdv, child) {
      return DataTable(
        columns: const <DataColumn>[
          DataColumn(label: Text('RANK')),
          DataColumn(label: Text('PLAYERS')),
          DataColumn(label: Text('POINTS')),
        ],
        rows: List<DataRow>.generate(
          0,
          (index) => DataRow(
            color: index.isEven
                ? MaterialStateProperty.all<Color?>(Colors.grey[100])
                : MaterialStateProperty.all<Color?>(Colors.white),
            cells: [
              DataCell(Text('${index + 1}')),
              const DataCell(Text('Name')),
              const DataCell(Text('857')),
            ],
          ),
        ),
      );
    });
  }
}

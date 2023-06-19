import 'package:byte_sigma/models/view_model/common_data_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../constants.dart';
import '../../../models/services/local/team_details_res.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class TabBarBody extends StatelessWidget {
  int? subtabIndex;
  int? tabIndex;
  TabBarBody({super.key, this.subtabIndex, this.tabIndex});
  //tabindex 1:ODI, 2:TEST, 3:T20
  //subtabindex 1:batsmen, 2:bowlers, 3:all-rounders, 4:teams

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Consumer<CommonDataViewModel>(builder: (context, cdv, _) {
        Provider.of<CommonDataViewModel>(context, listen: false).loadJsonData();
        List<OdiBatsman>? val = tabIndex == 1
            ? subtabIndex == 1
                ? cdv.teamDetails?.responseData?.result?.odiBatsman
                : subtabIndex == 2
                    ? cdv.teamDetails?.responseData?.result?.odiBowler
                    : cdv.teamDetails?.responseData?.result?.odiAllRounder
            : tabIndex == 2
                ? subtabIndex == 1
                    ? cdv.teamDetails?.responseData?.result?.testBatsman
                    : subtabIndex == 2
                        ? cdv.teamDetails?.responseData?.result?.testBowler
                        : cdv.teamDetails?.responseData?.result?.testAllRounder
                : subtabIndex == 1
                    ? cdv.teamDetails?.responseData?.result?.t20Batsman
                    : subtabIndex == 2
                        ? cdv.teamDetails?.responseData?.result?.t20Bowler
                        : cdv.teamDetails?.responseData?.result?.t20AllRounder;
        if (cdv.teamDetails == null) {
          return Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
                color: kPrimaryColor!, size: 50),
          );
        } else {
          return DataTable(
            columns: const <DataColumn>[
              DataColumn(label: Text('RANK')),
              DataColumn(label: Text('PLAYERS')),
              DataColumn(label: Text('POINTS')),
            ],
            rows: List<DataRow>.generate(
              val?.length ?? 0,
              (index) => DataRow(
                color: index.isEven
                    ? MaterialStateProperty.all<Color?>(Colors.grey[100])
                    : MaterialStateProperty.all<Color?>(Colors.white),
                cells: [
                  DataCell(
                      Text(val?.elementAt(index).position.toString() ?? '')),
                  DataCell(Text(val?.elementAt(index).playerName ?? '')),
                  DataCell(Text(val?.elementAt(index).points.toString() ?? '')),
                ],
              ),
            ),
          );
        }
      }),
    );
  }
}

class TabBarTeamsBody extends StatelessWidget {
  int? tabIndex;
  TabBarTeamsBody({super.key, this.tabIndex});
  //tabindex 1:ODI, 2:TEST, 3:T20

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Consumer<CommonDataViewModel>(builder: (context, cdv, _) {
        List<OdiTeams>? val = tabIndex == 1
            ? cdv.teamDetails?.responseData?.result?.odiTeams
            : tabIndex == 2
                ? cdv.teamDetails?.responseData?.result?.testTeams
                : cdv.teamDetails?.responseData?.result?.t20Teams;
        return DataTable(
          columns: const <DataColumn>[
            DataColumn(label: Text('RANK')),
            DataColumn(label: Text('TEAMS')),
            DataColumn(label: Text('RATING')),
            DataColumn(label: Text('POINTS')),
          ],
          rows: List<DataRow>.generate(
            val?.length ?? 0,
            (index) => DataRow(
              color: index.isEven
                  ? MaterialStateProperty.all<Color?>(Colors.grey[100])
                  : MaterialStateProperty.all<Color?>(Colors.white),
              cells: [
                DataCell(Text(val?.elementAt(index).position.toString() ?? '')),
                DataCell(Text(
                    val?.elementAt(index).teamName?.replaceAll(' ', '') ?? '')),
                DataCell(Text(val?.elementAt(index).rating.toString() ?? '')),
                DataCell(Text(val?.elementAt(index).points.toString() ?? '')),
              ],
            ),
          ),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:turbostat_tdd/core/util/util.dart';
import 'package:turbostat_tdd/features/turbostat_tdd/presentation/bloc/bloc.dart';
import 'package:turbostat_tdd/features/turbostat_tdd/presentation/widgets/widgets.dart';
import 'package:turbostat_tdd/injection_container.dart';

class LoadDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      floatingActionButton: Consumer<PageCounter>(
        builder: (context, page, child) {
          switch (page.pageIndex) {
            case 0:
              return FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              );
            case 2:
              return FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              );
          }
          return Visibility(
              visible: false,
              child: FloatingActionButton(
                onPressed: () {},
              ));
        },
      ),
      bottomNavigationBar: BottomNavigation(),
      body: buildBody(context),
    );
  }

  BlocProvider<LoadDataBloc> buildBody(BuildContext context) {
    return BlocProvider(
      builder: (_) => sl<LoadDataBloc>(),
      child:
          BlocBuilder<LoadDataBloc, LoadDataState>(builder: (context, state) {
        BlocProvider.of<LoadDataBloc>(context).add(GetAllCar());
        //            state = Loading();
        if (state is InitialLoadDataState) {
          return Container(
            child: Column(
              children: <Widget>[
                CustomCircleProgressBar(),
                //Text('Empty State'),
              ],
            ),
          );
        }
        if (state is Loading) {
          return Container(
            child: Column(
              children: <Widget>[
                CustomCircleProgressBar(),
                //Text('Loading State'),
              ],
            ),
          );
        }
        if (state is LoadedAllCars) {
          //print(state.listAll);
          return state.listAll.isEmpty
              ? AddCarForm()
              : Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorLight),
                      child: DropdownCarButton(
                        listAll: state.listAll,
                      ),
                    ),
                    Expanded(
                      child: PageViewController(),
                    ),
                  ],
                );
        }
        return Container();
      }),
    );
  }
}

import 'package:bookly/Features/Home/Domain/repos/home_repo.dart';
import 'package:bookly/Features/Home/data/data_soures/home_local_data_soure.dart';
import 'package:bookly/Features/Home/data/data_soures/home_remote_data_sourse.dart';
import 'package:bookly/Features/Home/data/repoesImplementaion/home_repo_implement.dart';
import 'package:bookly/core/Utils/api_servers.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpServerLocator() {
  getIt.registerSingleton<ApiServers>(
    ApiServers(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(
      homeRemoteDataSourse:
          HomeremoteDataSourseImpemen(getIt.get<ApiServers>()),
      homeLocalDataSoure: HomeLocalDataSoureImple(),
    ),
  );
}

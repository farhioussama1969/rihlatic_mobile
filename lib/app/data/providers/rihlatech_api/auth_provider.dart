import 'package:get/get.dart';
import 'package:rihlatic/app/core/constants/end_points_constants.dart';
import 'package:rihlatic/app/core/constants/storage_keys_constants.dart';
import 'package:rihlatic/app/core/services/device_info_service.dart';
import 'package:rihlatic/app/core/services/http_client_service.dart';
import 'package:rihlatic/app/core/services/local_storage_service.dart';
import 'package:rihlatic/app/data/models/api_response.dart';
import 'package:rihlatic/app/data/models/device_info_model.dart';
import 'package:rihlatic/app/data/models/user_model.dart';

class AuthProvider {
  Future<bool?> register({
    required String email,
    required String username,
    required String password,
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.register,
      requestType: HttpRequestTypes.post,
      showErrorToast: true,
      data: {
        "username": username,
        "email": email,
        "password": password,
        "password_confirmation": password,
      },
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );

    if (response?.body != null) {
      return response?.body['registration'];
    }
    return null;
  }

  Future<UserModel?> login({
    required String username,
    required String password,
    required Function onLoading,
    required Function onFinal,
  }) async {
    DeviceInfoModel? deviceInfo = await DeviceInfoService.getDeviceInfo();
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.register,
      requestType: HttpRequestTypes.post,
      showErrorToast: true,
      data: {
        "username": username,
        "password": password,
        "device_token": await LocalStorageService.loadData(
                key: StorageKeysConstants.fcmToken, type: DataTypes.string) ??
            'no token',
        "device_id": deviceInfo?.deviceId,
        "device_name": deviceInfo?.androidDeviceInfo?.device ??
            deviceInfo?.iosDeviceInfo?.name,
      },
      onSuccess: (response) async {
        await LocalStorageService.saveData(
          key: StorageKeysConstants.serverApiToken,
          value: response.body['token'],
          type: DataTypes.string,
        );
      },
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );

    if (response?.body != null) {
      return UserModel.fromJson(response?.body['user']);
    }
    return null;
  }
}

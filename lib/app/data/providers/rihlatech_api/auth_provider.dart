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

  Future<bool?> resendOtp({
    required String email,
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.resendOtp,
      requestType: HttpRequestTypes.post,
      showErrorToast: true,
      data: {
        "email": email,
      },
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );

    if (response?.body != null) {
      return response?.body['resend'];
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

  Future<UserModel?> me({
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.me,
      requestType: HttpRequestTypes.get,
      showErrorToast: true,
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );
    if (response?.body != null) {
      return UserModel.fromJson(response?.body['user']);
    }
    return null;
  }

  Future<bool?> logout({
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.logout,
      requestType: HttpRequestTypes.post,
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );
    if (response?.body != null) {
      return response?.body['logout'];
    }
    return null;
  }

  Future<UserModel?> changePassword({
    required String password,
    required String password_confirmation,
    required String old_password,
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.changePassword,
      requestType: HttpRequestTypes.patch,
      showErrorToast: true,
      data: {
        "password": password,
        "password_confirmation": password_confirmation,
        "old_password": old_password
      },
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );

    if (response?.body['user'] != null) {
      return UserModel.fromJson(response?.body['user']);
    }
    return null;
  }

  // TODO: postman error
  Future<UserModel?> ramindPassword({
    required String email,
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.remindPassword,
      requestType: HttpRequestTypes.post,
      showErrorToast: true,
      data: {
        "email": email,
      },
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );

    if (response?.body['user'] != null) {
      return UserModel.fromJson(response?.body['user']);
    }
    return null;
  }

  Future<UserModel?> restPassword({
    required String email,
    required String code,
    required String password,
    required String password_confirmation,
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.restPassword,
      requestType: HttpRequestTypes.post,
      showErrorToast: true,
      data: {
        "email": email,
        "code": code,
        "password": password,
        "password_confirmation": password_confirmation
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

  Future<UserModel?> verficationEmail({
    required String email,
    required String code,
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.verficationEmail,
      requestType: HttpRequestTypes.post,
      showErrorToast: true,
      data: {
        "email": email,
        "code": code,
      },
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );

    if (response?.body != null) {
      return UserModel.fromJson(response?.body['user']);
    }
    return null;
  }

  Future<String?> checkUserStatus({
    required String email,
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.checkUserStatus,
      requestType: HttpRequestTypes.post,
      showErrorToast: true,
      data: {
        "email": email,
      },
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );

    if (response?.body != null) {
      return response?.body['status'];
    }
    return null;
  }
}

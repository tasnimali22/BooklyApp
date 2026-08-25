import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServicesFailer extends Failure {
  const ServicesFailer(super.errMessage);

  factory ServicesFailer.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return const ServicesFailer('Connection timeout with API server');

      case DioExceptionType.sendTimeout:
        return const ServicesFailer('Send timeout with API server');

      case DioExceptionType.receiveTimeout:
        return const ServicesFailer('Receive timeout with API server');

      case DioExceptionType.badCertificate:
        return const ServicesFailer('Bad certificate with API server');

      case DioExceptionType.badResponse:
        return ServicesFailer(
          dioError.response?.data ??
              'Received invalid status code: ${dioError.response?.statusCode}',
        );

      case DioExceptionType.cancel:
        return const ServicesFailer('Request to API server was cancelled');

      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return const ServicesFailer(
            'No Internet connection, please check your connection',
          );
        }
        return const ServicesFailer('Unexpected error, please try again!');
      case DioExceptionType.connectionError:
        throw UnimplementedError();
      case DioExceptionType.transformTimeout:
        throw UnimplementedError();
    }
  }

  factory ServicesFailer.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServicesFailer(response['error']['message']);
    } else if (statusCode == 404) {
      return const ServicesFailer('Your request not found, please try later!');
    } else if (statusCode == 500) {
      return const ServicesFailer('Internal server error, please try later!');
    } else {
      return const ServicesFailer(
        'Oops something went wrong, please try again!',
      );
    }
  }
}

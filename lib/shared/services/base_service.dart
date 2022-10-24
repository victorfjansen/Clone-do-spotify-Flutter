class BaseService {
  static const _baseUrl = 'http://192.168.15.170:3000';

  const BaseService();

  String getApiUrl({String? endpoint}) {
    return endpoint != null ? '$_baseUrl/$endpoint' : _baseUrl;
  }
}
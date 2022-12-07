enum ENV {
  DESA,
  QA,
  PROD,
}

extension Environment on ENV {
  static ENV type = ENV.DESA;
  static Map<String, dynamic> get appConfig {
    switch (type) {
      case ENV.DESA:
        return {
          "enviroment": "DESAROLLO",
          "baseUrl": "http://biomaticserver.com",
          "connectTimeout": 60000,
          "receiveTimeout": 60000,
        };
      case ENV.QA:
        return {
          "enviroment": "QA",
          "baseUrl": "http://biomaticserver.com",
          "connectTimeout": 60000,
          "receiveTimeout": 60000,
        };
      case ENV.PROD:
        return {
          "enviroment": "PRODUCCIÓN",
          "baseUrl": "http://biomaticserver.com",
          "connectTimeout": 60000,
          "receiveTimeout": 60000,
        };
      default:
        return {
          "": "",
        };
    }
  }
}

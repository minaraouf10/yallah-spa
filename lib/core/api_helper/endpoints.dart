abstract class Endpoints {
  static const host = 'https://yallahspaapp.com/api/';

  static const baseUrl = host;
  static const register = 'register';
  static const login = 'auth/otp';
  static const otp = 'auth/verify';
  static const services = 'service/index';
  static const profile = 'client/profile/me';
  static const getAllArticles = 'article/index';
  static const getAllOffers = 'offer/index';
  static const getAllFavorite = 'client/favourite/index';
  static const getAllProducts = 'product/index';
}

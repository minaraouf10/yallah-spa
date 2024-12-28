/// Generated file. Do not edit.
///
/// Original: assets/lang
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 122 (61 per locale)
///
/// Built on 2024-12-28 at 16:58 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.ar;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.ar) // set locale
/// - Locale locale = AppLocale.ar.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.ar) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	ar(languageCode: 'ar', build: Translations.build),
	en(languageCode: 'en', build: _TranslationsEn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of tr).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = tr.someKey.anotherKey;
/// String b = tr['someKey.anotherKey']; // Only for edge cases!
Translations get tr => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final tr = Translations.of(context); // Get tr variable.
/// String a = tr.someKey.anotherKey; // Use tr variable.
/// String b = tr['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.tr.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get tr => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final tr = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get Change_language => 'تغيير اللغة';
	String get Contact_us   => 'تواصل معنا';
	String get Delete_account => 'حذف الحساب';
	String get Discover_the_best_foods_from_over => 'اكتشاف أفضل الأطعمة من أكثر من 1000';
	String get Edit_your_personal_account_information => 'تعديل بيانات حسابك الشخصي';
	String get Fast_Delivery => 'توصيل سريع';
	String get Fast_food_body => 'توصيل الوجبات السريعة إلى منزلك، مكتبك';
	String get Fast_food_suBody => 'أينما تكون';
	String get Find_Food_You_Love => 'ابحث عن الطعام الذي تحبه';
	String get Live_Tracking => 'تتبع مباشر';
	String get Live_Tracking_body => 'تتبع طعامك في الوقت الحقيقي على التطبيق';
	String get Live_Tracking_suBody => 'بمجرد تقديم الطلب';
	String get Log_out => 'تسجيل خروج';
	String get Makeup_and_eyelashes => 'المكياجُ والرموشُ';
	String get Share_app => 'شارك التطبيق';
	String get Your_beauty_is_a_journey_that_begins_with_our_services => ' جمالكِ رحلةٌ تبدأُ بخدماتِنا!';
	String get abouut_app => 'حول التطبيق';
	String get add_details_login => 'أضف التفاصيل الخاصة بك لتسجيل الدخول';
	String get add_your_details_to_sign_up => 'أضف التفاصيل الخاصة بك للتسجيل';
	String get address => 'العنوان';
	String get address_not_empty => 'يجب ألا يكون العنوان فارغًا';
	String get ahmed => 'احمد';
	String get already_have_an_account => 'هل لديك حساب؟';
	String get articles => 'المقالات';
	String get card => 'السلة';
	String get confirm_password => 'تأكيد كلمة المرور';
	String get confirm_password_not_empty => 'يجب ألا يكون تأكيد كلمة المرور فارغًا';
	String get create_an_account => 'إنشاء حساب';
	String get delivery_to => 'التوصيل إلى';
	String get discover_the_best_foods => 'اكتشف أفضل الأطعمة من أكثر من 1000';
	String get donot_have_an_account  => 'ليس لديك حساب؟';
	String get email => 'بريدك الالكتروني';
	String get email_not_empty => 'يجب ألا يكون البريد الإلكتروني فارغًا';
	String get enter_your_phone_number => 'ادخل رقم هاتفك';
	String get error_occurred => 'حدث خطأ';
	String get favorites => 'المفضلات';
	String get forget_password => 'نسيت كلمة السر؟';
	String get home => 'الرئيسية';
	String get invalid_field => 'حقل غير صالح';
	String get login => 'تسجيل الدخول';
	String get login_with => 'أو تسجيل الدخول باستخدام';
	String get mobile => 'رقم المحمول';
	String get mobile_not_must_empty => 'يجب ألا يكون رقم الهاتف المحمول فارغًا';
	String get name => 'الاسم';
	String get name_not_empty => 'يجب ألا يكون الاسم فارغًا';
	String get next => 'التالي';
	String get no_internet => 'لا يوجد اتصال بالانترنت';
	String get notification => 'الإشعارات';
	String get offers => 'العروض';
	String get orders => 'الطلبات';
	String get password => 'كلمة المرور';
	String get password_not_empty => 'يجب ألا تكون كلمة المرور فارغة';
	String get privacy_policy  => 'سياسة الخصوصية';
	String get restaurants_and_fast_delivery => 'مطاعم و توصيل سريع الي باب بيتك';
	String get restaurants_and_fast_delivery_to_your_doorstep => 'المطاعم والتوصيل السريع إلى عتبة داركم';
	String get search => 'ابحث';
	String get search_country => 'ابحث عن الدوله';
	String get settings => 'الإعدادات';
	String get sign_up => 'انشاء حساب';
	String get something_error_try_again => 'حدث خطأ ما يرجى المحاولة مرة أخرى';
	String get terms_and_conditions  => 'الأحكام والشروط';
}

// Path: <root>
class _TranslationsEn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _TranslationsEn _root = this; // ignore: unused_field

	// Translations
	@override String get Change_language => 'Change language';
	@override String get Contact_us   => 'Contact us';
	@override String get Delete_account => 'Delete account';
	@override String get Discover_the_best_foods_from_over => 'Discover the best foods from over 1,000 ';
	@override String get Edit_your_personal_account_information => 'Edit your personal account information';
	@override String get Fast_Delivery => 'Fast Delivery';
	@override String get Fast_food_body => 'Fast food delivery to your home, office ';
	@override String get Fast_food_suBody => 'wherever you are';
	@override String get Find_Food_You_Love => 'Find Food You Love';
	@override String get Live_Tracking => 'Live Tracking';
	@override String get Live_Tracking_body => 'Real time tracking of your food on the app ';
	@override String get Live_Tracking_suBody => 'once you placed the order';
	@override String get Log_out => 'Delete_account';
	@override String get Makeup_and_eyelashes => 'Makeup and eyelashes';
	@override String get Share_app => 'Share app';
	@override String get Your_beauty_is_a_journey_that_begins_with_our_services => 'Your beauty is a journey that begins with our services!';
	@override String get abouut_app => 'About  app';
	@override String get add_details_login => 'Add your details to login';
	@override String get add_your_details_to_sign_up => 'Add your details to sign up';
	@override String get address => 'Address';
	@override String get address_not_empty => 'address must not empty';
	@override String get ahmed => 'Ahmed';
	@override String get already_have_an_account => 'Already have an Account?';
	@override String get articles => 'Articles';
	@override String get card => 'Card';
	@override String get confirm_password => 'Confirm Password';
	@override String get confirm_password_not_empty => 'confirm password must not empty';
	@override String get create_an_account => 'Create an Account';
	@override String get delivery_to => 'Delivery to';
	@override String get discover_the_best_foods => 'Discover the best foods from over 1,000 ';
	@override String get donot_have_an_account  => 'Don\'t have an Account? ';
	@override String get email => 'Your Email';
	@override String get email_not_empty => 'email must not empty';
	@override String get enter_your_phone_number => 'Enter your phone number';
	@override String get error_occurred => 'Error Occurred';
	@override String get favorites => 'Favorites';
	@override String get forget_password => 'Forgot your password?';
	@override String get home => 'Home';
	@override String get invalid_field => 'Invalid field';
	@override String get login => 'Login';
	@override String get login_with => 'or Login With';
	@override String get mobile => 'Mobile No';
	@override String get mobile_not_must_empty => 'mobile number must not empty';
	@override String get name => 'Name';
	@override String get name_not_empty => 'name must not empty';
	@override String get next => 'Next';
	@override String get no_internet => 'No Internet Connection';
	@override String get notification => 'Notification';
	@override String get offers => 'Offers';
	@override String get orders => 'Orders';
	@override String get password => 'Password';
	@override String get password_not_empty => 'password must not empty';
	@override String get privacy_policy  => 'privacy policy';
	@override String get restaurants_and_fast_delivery => 'restaurants and fast delivery to your doorstep';
	@override String get restaurants_and_fast_delivery_to_your_doorstep => 'restaurants and fast delivery to your doorstep';
	@override String get search => 'Search';
	@override String get search_country => 'Search country';
	@override String get settings => 'Settings';
	@override String get sign_up => 'Sign Up';
	@override String get something_error_try_again => 'Something Happened Error Please Try Again';
	@override String get terms_and_conditions  => 'terms and conditions';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'Change_language': return 'تغيير اللغة';
			case 'Contact_us  ': return 'تواصل معنا';
			case 'Delete_account': return 'حذف الحساب';
			case 'Discover_the_best_foods_from_over': return 'اكتشاف أفضل الأطعمة من أكثر من 1000';
			case 'Edit_your_personal_account_information': return 'تعديل بيانات حسابك الشخصي';
			case 'Fast_Delivery': return 'توصيل سريع';
			case 'Fast_food_body': return 'توصيل الوجبات السريعة إلى منزلك، مكتبك';
			case 'Fast_food_suBody': return 'أينما تكون';
			case 'Find_Food_You_Love': return 'ابحث عن الطعام الذي تحبه';
			case 'Live_Tracking': return 'تتبع مباشر';
			case 'Live_Tracking_body': return 'تتبع طعامك في الوقت الحقيقي على التطبيق';
			case 'Live_Tracking_suBody': return 'بمجرد تقديم الطلب';
			case 'Log_out': return 'تسجيل خروج';
			case 'Makeup_and_eyelashes': return 'المكياجُ والرموشُ';
			case 'Share_app': return 'شارك التطبيق';
			case 'Your_beauty_is_a_journey_that_begins_with_our_services': return ' جمالكِ رحلةٌ تبدأُ بخدماتِنا!';
			case 'abouut_app': return 'حول التطبيق';
			case 'add_details_login': return 'أضف التفاصيل الخاصة بك لتسجيل الدخول';
			case 'add_your_details_to_sign_up': return 'أضف التفاصيل الخاصة بك للتسجيل';
			case 'address': return 'العنوان';
			case 'address_not_empty': return 'يجب ألا يكون العنوان فارغًا';
			case 'ahmed': return 'احمد';
			case 'already_have_an_account': return 'هل لديك حساب؟';
			case 'articles': return 'المقالات';
			case 'card': return 'السلة';
			case 'confirm_password': return 'تأكيد كلمة المرور';
			case 'confirm_password_not_empty': return 'يجب ألا يكون تأكيد كلمة المرور فارغًا';
			case 'create_an_account': return 'إنشاء حساب';
			case 'delivery_to': return 'التوصيل إلى';
			case 'discover_the_best_foods': return 'اكتشف أفضل الأطعمة من أكثر من 1000';
			case 'donot_have_an_account ': return 'ليس لديك حساب؟';
			case 'email': return 'بريدك الالكتروني';
			case 'email_not_empty': return 'يجب ألا يكون البريد الإلكتروني فارغًا';
			case 'enter_your_phone_number': return 'ادخل رقم هاتفك';
			case 'error_occurred': return 'حدث خطأ';
			case 'favorites': return 'المفضلات';
			case 'forget_password': return 'نسيت كلمة السر؟';
			case 'home': return 'الرئيسية';
			case 'invalid_field': return 'حقل غير صالح';
			case 'login': return 'تسجيل الدخول';
			case 'login_with': return 'أو تسجيل الدخول باستخدام';
			case 'mobile': return 'رقم المحمول';
			case 'mobile_not_must_empty': return 'يجب ألا يكون رقم الهاتف المحمول فارغًا';
			case 'name': return 'الاسم';
			case 'name_not_empty': return 'يجب ألا يكون الاسم فارغًا';
			case 'next': return 'التالي';
			case 'no_internet': return 'لا يوجد اتصال بالانترنت';
			case 'notification': return 'الإشعارات';
			case 'offers': return 'العروض';
			case 'orders': return 'الطلبات';
			case 'password': return 'كلمة المرور';
			case 'password_not_empty': return 'يجب ألا تكون كلمة المرور فارغة';
			case 'privacy_policy ': return 'سياسة الخصوصية';
			case 'restaurants_and_fast_delivery': return 'مطاعم و توصيل سريع الي باب بيتك';
			case 'restaurants_and_fast_delivery_to_your_doorstep': return 'المطاعم والتوصيل السريع إلى عتبة داركم';
			case 'search': return 'ابحث';
			case 'search_country': return 'ابحث عن الدوله';
			case 'settings': return 'الإعدادات';
			case 'sign_up': return 'انشاء حساب';
			case 'something_error_try_again': return 'حدث خطأ ما يرجى المحاولة مرة أخرى';
			case 'terms_and_conditions ': return 'الأحكام والشروط';
			default: return null;
		}
	}
}

extension on _TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'Change_language': return 'Change language';
			case 'Contact_us  ': return 'Contact us';
			case 'Delete_account': return 'Delete account';
			case 'Discover_the_best_foods_from_over': return 'Discover the best foods from over 1,000 ';
			case 'Edit_your_personal_account_information': return 'Edit your personal account information';
			case 'Fast_Delivery': return 'Fast Delivery';
			case 'Fast_food_body': return 'Fast food delivery to your home, office ';
			case 'Fast_food_suBody': return 'wherever you are';
			case 'Find_Food_You_Love': return 'Find Food You Love';
			case 'Live_Tracking': return 'Live Tracking';
			case 'Live_Tracking_body': return 'Real time tracking of your food on the app ';
			case 'Live_Tracking_suBody': return 'once you placed the order';
			case 'Log_out': return 'Delete_account';
			case 'Makeup_and_eyelashes': return 'Makeup and eyelashes';
			case 'Share_app': return 'Share app';
			case 'Your_beauty_is_a_journey_that_begins_with_our_services': return 'Your beauty is a journey that begins with our services!';
			case 'abouut_app': return 'About  app';
			case 'add_details_login': return 'Add your details to login';
			case 'add_your_details_to_sign_up': return 'Add your details to sign up';
			case 'address': return 'Address';
			case 'address_not_empty': return 'address must not empty';
			case 'ahmed': return 'Ahmed';
			case 'already_have_an_account': return 'Already have an Account?';
			case 'articles': return 'Articles';
			case 'card': return 'Card';
			case 'confirm_password': return 'Confirm Password';
			case 'confirm_password_not_empty': return 'confirm password must not empty';
			case 'create_an_account': return 'Create an Account';
			case 'delivery_to': return 'Delivery to';
			case 'discover_the_best_foods': return 'Discover the best foods from over 1,000 ';
			case 'donot_have_an_account ': return 'Don\'t have an Account? ';
			case 'email': return 'Your Email';
			case 'email_not_empty': return 'email must not empty';
			case 'enter_your_phone_number': return 'Enter your phone number';
			case 'error_occurred': return 'Error Occurred';
			case 'favorites': return 'Favorites';
			case 'forget_password': return 'Forgot your password?';
			case 'home': return 'Home';
			case 'invalid_field': return 'Invalid field';
			case 'login': return 'Login';
			case 'login_with': return 'or Login With';
			case 'mobile': return 'Mobile No';
			case 'mobile_not_must_empty': return 'mobile number must not empty';
			case 'name': return 'Name';
			case 'name_not_empty': return 'name must not empty';
			case 'next': return 'Next';
			case 'no_internet': return 'No Internet Connection';
			case 'notification': return 'Notification';
			case 'offers': return 'Offers';
			case 'orders': return 'Orders';
			case 'password': return 'Password';
			case 'password_not_empty': return 'password must not empty';
			case 'privacy_policy ': return 'privacy policy';
			case 'restaurants_and_fast_delivery': return 'restaurants and fast delivery to your doorstep';
			case 'restaurants_and_fast_delivery_to_your_doorstep': return 'restaurants and fast delivery to your doorstep';
			case 'search': return 'Search';
			case 'search_country': return 'Search country';
			case 'settings': return 'Settings';
			case 'sign_up': return 'Sign Up';
			case 'something_error_try_again': return 'Something Happened Error Please Try Again';
			case 'terms_and_conditions ': return 'terms and conditions';
			default: return null;
		}
	}
}

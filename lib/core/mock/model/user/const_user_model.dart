import '../../../../features/auth/register/model/register_request_model.dart';

//?In the backend, because of the problem of adding new users,
//? demo data was used (it can be edited as needed).
final constUserModel = RegisterRequestModel(
    email: 'John@gmail.com',
    username: 'johnd',
    password: 'm38rmF\$',
    name: Name(firstname: 'John', lastname: 'Doe'),
    address: Address(
        city: 'kilcoole',
        street: '7835 new road',
        number: 3,
        zipcode: '12926-3874',
        geolocation: Geolocation(lat: '-37.3159', long: '81.1496')),
    phone: '1-570-236-7033');

// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';

//! Declare Exception types

class ServerException implements Exception {}

class EmptyCacheException implements Exception {}

class OfflineException implements Exception {}

//! Handle Errors

abstract class Failure extends Equatable {}

class OfflineFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class EmptyCacheFailure extends Failure {
  @override
  List<Object?> get props => [];
}


// Strings

const String SERVER_FAILURE_MESSAGE = 'Please try again later .';
const String EMPTY_CACHE_FAILURE_MESSAGE = 'No Data';
const String OFFLINE_FAILURE_MESSAGE = 'Please Check your Internet Connection';
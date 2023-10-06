//
//  RookUsersConfiguration.swift
//  
//
//  Created by Francisco Guerrero Escamilla on 14/08/23.
//

import Foundation
import RookUsersSDK

/// `RookUserConfiguration` configures the sdk and init before start using it.
///
/// Use the shared property to access the class
public final class RookUserConfiguration {
  
  ///Returns the shared RookUserConfiguration object
  public static let shared: RookUserConfiguration = RookUserConfiguration()
  
  ///Sets the configuration with  your`urlAPI`, `clientUUID` and `secreteKey` parameters
  ///
  ///- parameter urlAPI : `String`  the url it could be for dev or production environment
  ///- parameter clientUUID : `String`  your client uuid
  ///- parameter secretKey : `String` your secrete key
  public func setConfiguration(urlAPI: String, clientUUID: String, secretKey: String) {
    RookUsersConfiguration.shared.setConfiguration(
      clientUUID: clientUUID,
      secretKey: secretKey)
  }
  
  ///Sets the configuration to the environment given.
  ///
  ///- parameter environment : `RookUsersEnvironment`  the environment to work
  public func setEnvironment(_ environment: RookUsersEnvironment) {
    RookUsersConfiguration.shared.setEnvironment(environment)
  }
  
  /// Initializes the sdk and validates if the credentials are correct
  ///
  /// - parameter completion : contains a bool indicating if the process was successful or and  error.
  public func initRookUsers(completion: @escaping (Result<Bool, Error>) -> Void) {
    RookUsersConfiguration.shared.initRookUsers(completion: completion)
  }
  
}

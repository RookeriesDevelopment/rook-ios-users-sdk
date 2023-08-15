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
  
  ///Returns the shated RookUserConfiguration object
  public static let shared: RookUserConfiguration = RookUserConfiguration()
  
  ///Sets the configuration with  your`urlAPI`, `clientUUID` and `secreteKey` parameters
  ///
  ///- parameter urlAPI : `String`  the url it could be for dev or production environment
  ///- parameter clientUUID : `String`  your client uuid
  ///- parameter secretKey : `String` your secrete key
  public func setConfiguration(urlAPI: String, clientUUID: String, secretKey: String) {
    RookUsersConfiguration.shared.setConfiration(
      urlAPI: urlAPI,
      clientUUID: clientUUID,
      secretKey: secretKey)
  }
  
  /// Initializes the sdk and validates if the credetials are correct
  ///
  /// - parameter completion : contains a bool indicating if the process was successfull or and  error.
  public func initRookUsers(completion: @escaping (Result<Bool, Error>) -> Void) {
    RookUsersConfiguration.shared.initRookUsers(completion: completion)
  }
  
}

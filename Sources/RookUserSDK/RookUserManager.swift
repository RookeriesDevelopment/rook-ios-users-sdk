//
//  File.swift
//  
//
//  Created by Francisco Guerrero Escamilla on 14/08/23.
//

import Foundation
import RookUsersSDK

/// The Access point to register a user in the rook server
///
////// Use `RookUserManager` to register a user id, this user id will be available for `RookAppleHealthExtraction` and `RookTransmission` sdk
final public class RookUserManager {
  
  private let userManager: RookUsersManger = RookUsersManger()
  
  public init() {
  }
  
  /// Registers a new user id in the rook server and it will be stored locally
  ///
  /// This method register a new user that will be available for `RookAppleHealthExtraction` and `RookTransmission` sdk
  public func registerRookUser(with id: String,
                               completion: @escaping (Result<Bool, Error>) -> Void) {
    userManager.registerRookUser(with: id, completion: completion)
  }
  
  /// Returns the id string stored locally.
  public func getUserIdStored(completion: @escaping (Result<String, Error>) -> Void) {
    userManager.getUserIdStored(completion: completion)
  }
  
  /// removes the user id stored locally.
  public func removeUser(completion: @escaping (Result<Bool, Error>) -> Void) {
    userManager.removeUser(completion: completion)
  }
  
  /// remove a user from rook server and removes the user stored locally
  ///
  /// To use this method it is necessary to register a user first
  public func removeUserFromRook(completion: @escaping (Result<Bool, Error>) -> Void) {
    userManager.removeUserFromRook(completion: completion)
  }
  
}

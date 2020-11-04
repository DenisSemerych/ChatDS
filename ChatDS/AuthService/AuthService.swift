//
//  AuthService.swift
//  ChatDS
//
//  Created by Денис Семерич on 03.11.2020.
//

import Foundation

protocol AuthServiceInterface {
    func signInWith(login: String, password: String, completion: @escaping (Result<User, Error>) -> Void)
    func createUserWith(login: String, password: String, completion: @escaping (Result<User, Error>) -> Void) 
}

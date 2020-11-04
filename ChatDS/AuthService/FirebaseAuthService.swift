//
//  FirebaseAuthService.swift
//  ChatDS
//
//  Created by Денис Семерич on 03.11.2020.
//

import Foundation
import Firebase
import Combine

// Не рассчитал время, не стал реализовывать логику.

class FirebaseAuthService: AuthServiceInterface {
    func signInWith(login: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().signIn(withEmail: login, password: password) { [weak self] authResult, error in
            guard let self = self, let uid = authResult?.user.uid else {
                completion(.failure(error ?? NSError()))
                return
            }
            
        }
    }
    
    func createUserWith(login: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        
    }
}

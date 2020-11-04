//
//  LoginViewModel.swift
//  ChatDS
//
//  Created by Денис Семерич on 03.11.2020.
//

import Foundation
import Combine

class LoginViewModel {
    
    let authService: AuthServiceInterface
    let storageService: StorageServiceInterface
    
    init(authService: AuthServiceInterface = FirebaseAuthService(), storageService: StorageServiceInterface = StorageService()) {
        self.authService = authService
        self.storageService = storageService
    }
    
    public let title: String = "Login"
    public let loginPlaceholder: String = "Enter your login"
    public let passwordPlaceholder: String = "Enter your password"
    public let buttonTitle: String = "Sign in"
    
    public var login: String = ""
    public var password: String = ""
    
    public var authorizedUser: User?
    public var authorizedSuccessMark: Int = 1
    public var isUserAuthorized: Int?
    
    public var errorParsedText: String = ""
    
    public func onSignIn() {
        guard !login.isEmpty, !password.isEmpty else {
            return
        }
        
        authService.signInWith(login: login, password: password, completion: {[weak self] result in
            guard let self = self else {
                return
            }
            
            switch result {
            case .failure(let error):
                self.errorParsedText = self.parse(error: error)
            case .success(let user):
                self.authorizedUser = self.storageService.store(user: user)
                self.isUserAuthorized = 1
            }
        })
    }
}


extension LoginViewModel {
    private func parse(error: Error) -> String {
        return error.localizedDescription
    }
}

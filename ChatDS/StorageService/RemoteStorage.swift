//
//  RemoteStorage.swift
//  
//
//  Created by Денис Семерич on 04.11.2020.
//

import Foundation

class RemoteStorage: RemoteStorageInterface {
    func fetchUser(id: Int, completion: @escaping (Result<User, Error>) -> Void) {}
    func addUser(id: Int, completion: @escaping (Result<User, Error>) -> Void) {}
}

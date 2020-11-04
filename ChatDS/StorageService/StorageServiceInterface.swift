//
//  StorageServiceInterface.swift
//  ChatDS
//
//  Created by Денис Семерич on 04.11.2020.
//

import Foundation

protocol StorageServiceInterface {
    @discardableResult
    func store(user: User) -> User
}

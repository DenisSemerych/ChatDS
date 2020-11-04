//
//  StorageService.swift
//  ChatDS
//
//  Created by Денис Семерич on 04.11.2020.
//

import Foundation

// Не рассчитал время, не стал реализовывать логику.


class StorageService: StorageServiceInterface {
    @discardableResult
    func store(user: User) -> User {
        return user
    }
}

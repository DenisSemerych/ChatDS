//
//  User.swift
//  ChatDS
//
//  Created by Денис Семерич on 03.11.2020.
//

import Foundation

class User: Codable {
    let uid: Int
    let name: String
    let threads: ThreadsViewModel
}

extension User: Hashable {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(uid)
        hasher.combine(name)
    }
    
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

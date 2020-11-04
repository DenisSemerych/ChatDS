//
//  ThreadViewModel.swift
//  ChatDS
//
//  Created by Денис Семерич on 03.11.2020.
//

import Foundation

class ThreadViewModel: Codable {
    let participant: Participant
    let messages: [Message]
}

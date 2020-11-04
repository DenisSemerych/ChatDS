//
//  ViewModel.swift
//  ChatDS
//
//  Created by Денис Семерич on 03.11.2020.
//

import Foundation
import Combine

class ThreadsViewModel: Codable {
    let threads: [ThreadViewModel]
    
    init(threads: [ThreadViewModel]) {
        self.threads = threads
    }
}

//
//  ThreadsView.swift
//  ChatDS
//
//  Created by Денис Семерич on 04.11.2020.
//

import SwiftUI

struct ThreadsView: View {
    
    @State public var viewModel: ThreadsViewModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ThreadsView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadsView(viewModel: ThreadsViewModel(threads: []))
    }
}

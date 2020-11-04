//
//  ContentView.swift
//  ChatDS
//
//  Created by Денис Семерич on 03.11.2020.
//

import SwiftUI

struct LoginView: View {
    
    @State private var viewModel: LoginViewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField(viewModel.loginPlaceholder, text: $viewModel.login)
                    .padding(20)
                    .multilineTextAlignment(.center)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.secondary))
                TextField(viewModel.passwordPlaceholder, text: $viewModel.password)
                    .padding(20)
                    .textContentType(.password)
                    .multilineTextAlignment(.center)
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color.secondary))
                Button(viewModel.buttonTitle, action: viewModel.onSignIn)
                    .frame(width: 200, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.black)
                    .accentColor(.white)
                    .cornerRadius(2)
                NavigationLink("", destination: LoginView(),
                               tag: viewModel.authorizedSuccessMark,
                               selection: $viewModel.isUserAuthorized)
            }
            .padding(20)
            .lineSpacing(20)
            .navigationTitle(viewModel.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

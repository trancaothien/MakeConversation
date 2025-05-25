//
//  RegisterView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 04/05/25
//
//

import SwiftUI

struct RegisterView: View {
           
    @ObservedObject var viewState: RegisterViewState
    
    var body: some View {
        GeometryReader { _ in
            VStack {
                HeaderView()
                    
                
                InputField(title: "First Name", isSecure: false, text: $viewState.firstname)
                
                InputField(title: "Last Name", isSecure: false, text: $viewState.lastname)
                
                InputField(title: "Email", isSecure: false, text: $viewState.email)
                
                InputField(title: "Password", isSecure: true, text: $viewState.password)
                
                PasswordRequirementView(requireOne: $viewState.requirementOne, requireTwo: $viewState.requirementTwo)
                    
                Button(action: {
                    // TODO: Handle when user taped on NEXT button
                    viewState.submitButtonDidTap = true
                    print("submitButtonDidTap = \(viewState.submitButtonDidTap)")
                }, label: {
                    Text("Submit")
                        .applySubHeader2Style(color: .white)
                })
                .buttonStyle(FilledButtonStyle(width: .infinity, height: .infinity))
                .padding(.horizontal, 16)
            }
            .padding(.top, 49)
            .padding(.bottom, 227)
            .ignoresSafeArea(.keyboard, edges: .bottom)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Button(action: {
                            viewState.backButtonDidTap = true
                        }) {
                            Image(.arrowLeadingIcon)
                        }
                        
                        Text("Create Account")
                    }
                }
            }
        }
    }
}


struct RegisterPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .register)
    }
}

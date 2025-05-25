//
//  LoginView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 04/05/25
//  
//

import SwiftUI

struct LoginView: View {
           
    @ObservedObject var viewState: LoginViewState
    
    var body: some View {
        GeometryReader {_ in
            VStack {
                //title
                Text("Sign In")
                    .applyHeader2Style()
                    .padding(.top, 100)
                    .padding(.bottom, 23.5)
                
                //to enter email and password
                InputView(email: $viewState.email, password: $viewState.password)
                
                VStack(alignment: .trailing) {
                    
                    Button(action: {
                        print("Clicked on Forgot password")
                    }, label: {
                        Text("Forgot password ?")
                            .applySubHeader2Style()
                    })
                    .padding(.trailing, 16)
                    
                    Button(action: {
                        viewState.nextButtonDidTap = true
                    }, label: {
                        Text("NEXT")
                            .applySubHeader2Style(color: .white)
                    })
                    .buttonStyle(FilledButtonStyle(width: .infinity, height: .infinity))
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    
                }
                .padding(.bottom, 36)
                
                //all method to login app (apple, google, facebook)
                LoginMethodView(createAccountButtonDidTap: $viewState.createAccountButtonDidTap)
            }
        }
        .ignoresSafeArea(.keyboard, edges: .all)
    }
}


struct LoginPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .login)
    }
}

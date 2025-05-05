//
//  LoginMethodView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 05/05/25
//

import SwiftUI

struct LoginMethodView: View {
    var body: some View {
        VStack {
            HStack() {
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                
                Text("Or")
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
            }
            .padding(.bottom, 19)
            
            Group {
                ButtonLoginMethodView(nameOfButton: "Continue with Apple", nameOfLogoButton: .appleSignInIcon, actionOfButton: {
                    print("Clicked on Continue with Apple")
                })
                .padding(.bottom, 16)
                
                ButtonLoginMethodView(nameOfButton: "Continue with Google", nameOfLogoButton: .googleSignInIcon, actionOfButton: {
                    print("Clicked on Continue with Google")
                })
                .padding(.bottom, 16)
                
                ButtonLoginMethodView(nameOfButton: "Continue with Facebook", nameOfLogoButton: .facebookSignInIcon, actionOfButton: {
                    print("Clicked on Continue with Facebook")
                })
                .padding(.bottom, 16)
            }
            
                
            Button("Create a Account", action: {
                print("Clicked on Create a Account")
            })
            .foregroundColor(.black)
            .padding(.top, 17.5)
        }
        .padding(.horizontal, 17.5)
    }
}

struct ButtonLoginMethodView: View {
    var nameOfButton: String
    var nameOfLogoButton: ImageResource
    
    var actionOfButton: () -> Void
    
    var body: some View {
        HStack {
            Button(action: {
                actionOfButton()
            }) {
                HStack {
                    Image(nameOfLogoButton)
                    
                    Text(nameOfButton)
                        .applySubHeader2Style(color: .neutraActive)
                }
                .frame(maxWidth: .infinity, maxHeight: 44)
            }
            .overlay(
                RoundedRectangle(cornerRadius: 44)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }
        
    }
}

#Preview {
    LoginMethodView()
}

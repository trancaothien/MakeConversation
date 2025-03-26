//
//  VerificationView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25
//  
//

import SwiftUI

struct VerificationView: View {
           
    @ObservedObject var viewState: VerificationViewState
    
    var body: some View {
        VStack {
            VStack {
                Text("verification.title")
                    .useCustomStyle(size: FontSize.size24, color: .text, weight: .bold)
                    .padding(.bottom, 10)
                
                Text("verification.content")
                    .useCustomStyle(size: FontSize.size14, color: .text, weight: .light)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
            }
            
            HStack(spacing: 12) {
                HStack {
                    Image(.vietnamFlagIcon)
                    Text("+84")
                        .useCustomStyle(size: FontSize.size14, color: .text, weight: .bold)
                        .foregroundColor(.black)
                }
                .frame(height: 36)
                .padding(.horizontal)
                .background(Color(.textfieldBackground))
                .cornerRadius(4)

                TextField("Phone Number", text: self.$viewState.phoneNumber)
                    .textFieldStyle(CustomTextFieldStyle(width: 245, heiht: 36, keyboadType: .numberPad))
                    .frame(height: 36)
                    .background(Color(.textfieldBackground))
            }
            .padding(.top, 15)
            Button("verification.button.continue") {
                self.viewState.continueButtonDidTap()
                print("Debug: Clicked on Continue Button")
            }
                .buttonStyle(FilledButtonStyle(width: .infinity))
                .padding(.bottom, 20)
                .padding()
        }
//        .padding(.top, 30)
    }
}

struct VerificationPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .verification)
    }
}


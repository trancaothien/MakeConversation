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
            
            Spacer()
                .frame(height: 170)
            
            Text("verification.title")
                .applyHeader2Style()
                .padding(.bottom, 8)
            
            Text("verification.content")
                .applyBody2Style()
                .multilineTextAlignment(.center)
                .padding(.bottom, 48)
            
            HStack {
                HStack(spacing: 8) {
                    Image(.vietnamFlagIcon)
                    Text("\(self.viewState.countryCode)")
                        .applyBody1Style(color: .disable)
                        .foregroundColor(.black)
                }
                .padding(.horizontal, 8)
                .frame(height: 36)
                .background(.neutral)
                .cornerRadius(4)

                TextField("verification.textfield.phone", text: self.$viewState.phoneNumber)
                    .textFieldStyle(CustomTextFieldStyle(keyboadType: .numberPad))
                    .frame(height: 36)
                    .frame(maxWidth: .infinity)
                    .background(.neutral)
            }
            .onAppear() {
                print("Debug: Value of phoneNumber = \(viewState.phoneNumber)")
            }
            
            Spacer()
            
            Button("verification.button.continue") {
                // TODO: Handle when user taped on continue button
                self.viewState.continueButtonDidTap = true
            }
            .buttonStyle(FilledButtonStyle(width: .infinity, active: viewState.enableContinueButton))
            .disabled(!viewState.enableContinueButton)
            .padding()
            
        }
        .padding(.horizontal, 24)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    // Pop to previous screen
                    self.viewState.backButtonDidTap = true
                }) {
                    Image(.arrowLeadingIcon)
                }
            }
        }
    }
}

struct VerificationPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .verification)
    }
}


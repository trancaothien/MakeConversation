//
//  VerificationOTPView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 26/3/25
//
//

import SwiftUI

struct VerificationOTPView: View {
           
    @StateObject var viewState: VerificationOTPViewState
    @State var phoneNumber: String
    
    var body: some View {
        VStack {
            
            Spacer()
                .frame(height: 170)
            
            Text("Enter Code")
                .applyHeader2Style()
                .padding(.bottom, 8)
            
            Text("We have sent you an SMS with the code to \(phoneNumber)")
                .applyBody2Style()
                .multilineTextAlignment(.center)
                .padding(.bottom, 48)
            
            CustomizableOTPView(otp: $viewState.otp, length: viewState.otp.count)
            
            Spacer()

            Button("Resend Code") {
                self.viewState.resendButtonDidTap = true
                print("Clicked on Resend Code Button")
            }
            .buttonStyle(TextButtonStyle(width: .infinity, color: .branch))
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    self.viewState.backButtonDidTap = true
                }) {
                    Image(.arrowLeadingIcon)
                }
            }
        }
    }
}

struct VerificationOTPPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .verificationOTP("+84 869 294 264"))
    }
}


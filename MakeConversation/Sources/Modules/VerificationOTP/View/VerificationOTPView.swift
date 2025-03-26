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
    
    var body: some View {
        VStack {
            Text("Enter Code")
                .useCustomStyle(size: FontSize.size24, color: .text, weight: .semibold)
                .padding()
            Text("We have sent you an SMS with the code to ...")
                .useCustomStyle(size: FontSize.size14, color: .text, weight: .regular)
                .multilineTextAlignment(.center)
                .padding()
            
            CustomizableOTPView(length: 4, borderColor: .gray, focusColor: .blue)
                .padding()
            
            Button("Resend Code") {
                
                print("Debug: Clicked on Term Title")
            }
            .buttonStyle(TextButtonStyle(width: .infinity))
            .foregroundColor(.blue)
        }
    }
}

struct VerificationOTPPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .verificationOTP)
    }
}


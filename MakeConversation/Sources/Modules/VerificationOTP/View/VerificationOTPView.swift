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
            
            HStack {
                ForEach(0..<4) {index in
                    TextField("", text: $viewState.otp[index])
                        .frame(width: 50, height: 50)
                        .keyboardType(.numberPad)
                        .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color(.systemGray6))
                        .shadow(color: .gray.opacity(0.3), radius: 3, x: 0, y: 2)
                        )
                        .onChange(of: viewState.otp[index]) {
                           
                                return
                           
                        }
                }
            }
        }
    }
}

//struct VerificationOTPPreviews: PreviewProvider {
//    static var previews: some View {
//        ApplicationViewBuilder.stub.build(view: .verificationOTP)
//    }
//}


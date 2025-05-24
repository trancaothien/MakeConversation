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
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 52, height: 50)
                    .foregroundColor(Color.neutral)
                    
                Image(systemName: "envelope")
                    .foregroundColor(.blue)
            }
            .padding(.bottom, 24)
            
            Text("Check your Email")
                .applyHeader2Style()
                .padding(.bottom, 6)
            
            Text("We sent a code to \(phoneNumber)")
                .applyBody1Style()
                .padding(.bottom, 16)
            
            CustomizableOTPView(otp: $viewState.otp, length: viewState.otp.count)
                .padding(.bottom, 48)
            
            Button(action: {
                // TODO: Handle when user taped on NEXT button
                
            }, label: {
                Text("Submit")
                    .applySubHeader2Style(color: .white)
            })
            .buttonStyle(FilledButtonStyle(width: .infinity, height: .infinity))
            .padding(.horizontal, 16)
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


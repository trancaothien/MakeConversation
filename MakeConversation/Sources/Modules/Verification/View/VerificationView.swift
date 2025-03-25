//
//  VerificationView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 24/3/25
//  
//

import SwiftUI

struct VerificationView: View {
           
    @StateObject var viewState: VerificationViewState
    @State var phoneNumber: String = ""
    
    var body: some View {
        VStack {
            Text("verification.title")
                .useCustomStyle(size: FontSize.size24, color: .text, weight: .bold)
                .padding(.bottom, 5)
            
            Text("verification.content")
                .useCustomStyle(size: FontSize.size14, color: .text, weight: .light)
                .multilineTextAlignment(.center)
                .padding(.bottom, 10)
            
            HStack {
                Section {
                    Image(.flagCover)
                    Text("+62")
                }
                .background(Color(.systemGray6))
                .cornerRadius(4)
                
                TextField("verification.textfield", text: $phoneNumber)
                    .keyboardType(.numberPad)
                    .foregroundColor(.black)
                    .background(Color(.systemGray6))
                    .cornerRadius(4)
            }
            .padding(.top, 12)
            
            Button("verification.button.continue") {
                self.viewState.continueButtonDidTap()
                print("Debug: Clicked on Continue Title")
            }
                .buttonStyle(FilledButtonStyle(width: .infinity))
                .padding(.top, 12)
        }
    }
}

struct VerificationPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .verification)
    }
}


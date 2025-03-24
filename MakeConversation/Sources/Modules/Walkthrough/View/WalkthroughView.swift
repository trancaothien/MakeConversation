//
//  WalkthroughView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 23/3/25.
//

import SwiftUI

struct WalkthroughView: View {
    @StateObject var viewState: WalkthroughViewState
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("WalkthroughImage")
                .padding()
            
            Text("Connect easily with your family and friends over countries")
                .font(.custom("Mulish", size: 24))
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            Button("Term & Privacy Policy", action: {
                termAndPrivacy()
            })
                .font(.custom("Mulish", size: 14))
                .lineSpacing(24 - 14)
                .foregroundColor(Color("BlackForLightTheme"))

            
            Button(action: {
                startMessaging()
            }) {
                Text("Start Messaging")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("BlueForLightTheme"))
                    .foregroundColor(.white)
                    .cornerRadius(30)
            }
            .padding()
        }
    }
    
    func termAndPrivacy() -> Void {
        print("Clicked on Term & Privacy Policy Button")
    }
    
    func startMessaging() -> Void {
        print("Clicked on Start Messaging Button")
    }
}

struct WalkthroughPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .walkthrough)
    }
}

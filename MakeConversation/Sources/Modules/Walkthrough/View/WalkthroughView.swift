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
            
            Image(.walkthoughCover)
            
            Text("walkthrough.title")
                .useCustomStyle(size: FontSize.size24, color: .text, weight: .bold)
                .multilineTextAlignment(.center)
                .padding(.top, 40)
            
            Spacer()
            
            Button("walkthrough.term.title") {
                self.viewState.privacyAndServiceDidTap()
                print("Debug: Clicked on Term Title")
            }
            .buttonStyle(TextButtonStyle(width: .infinity))
        
            Button("walkthrough.button.start") {
                self.viewState.startMessagingDidTap()
                print("Debug: Clicked on Start Title")
            }
            .buttonStyle(FilledButtonStyle(width: .infinity))
        }
        .padding(.horizontal, 24)
    }
}

struct WalkthroughPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .walkthrough)
    }
}

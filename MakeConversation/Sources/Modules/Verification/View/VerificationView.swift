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
    
    var body: some View {
        Button("Back") {
            self.viewState.backButtonDidTap()
        }
    }
}

struct VerificationPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .verification)
    }
}


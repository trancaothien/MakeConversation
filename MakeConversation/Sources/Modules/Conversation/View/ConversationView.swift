//
//  ConversationView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

struct ConversationView: View {
           
    @StateObject var viewState: ConversationViewState
    
    var body: some View {
        Text("Hello iOS")
    }
}

struct ConversationPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .conversation)
    }
}


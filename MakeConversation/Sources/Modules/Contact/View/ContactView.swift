//
//  ContactView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

struct ContactView: View {
           
    @StateObject var viewState: ContactViewState
    
    var body: some View {
        Text("Hello iOS / contact view")
    }
}

struct ContactPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .contact)
    }
}


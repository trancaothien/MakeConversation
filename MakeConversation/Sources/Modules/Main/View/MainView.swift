//
//  MainView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

struct MainView: View {
           
    @StateObject var viewState: MainViewState
    
    var body: some View {
        Text("Hello iOS")
    }
}

struct MainPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .main)
    }
}


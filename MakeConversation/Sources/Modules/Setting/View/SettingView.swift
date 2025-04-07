//
//  SettingView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

struct SettingView: View {
           
    @StateObject var viewState: SettingViewState
    
    var body: some View {
        VStack {
            Text("Hello iOS/ Setting View")
        }
        
    }
}



struct SettingPreviews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ApplicationViewBuilder.stub.build(view: .setting)
        }
    }
}


//
//  SplashView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

struct SplashView: View {
           
    @StateObject var viewState: SplashViewState
    
    var body: some View {
        Text("Hello iOS")
            .onAppear {
                
            }
    }
}

struct SplashPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .splash)
    }
}


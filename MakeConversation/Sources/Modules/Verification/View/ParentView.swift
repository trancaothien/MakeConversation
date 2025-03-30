//
//  ParentView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 28/3/25.
//

import SwiftUI

//class exampleClass: ObservableObject {
//    @Published var isShowing
//}
struct ParentView: View {
    @ObservedObject var viewState: VerificationViewState
    
    
    var body: some View {
        VStack{
            Button("Show sheet", action: {
                self.viewState.isShowing = true
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            self.viewState.changeColorUI
        }
        .sheet(isPresented: self.$viewState.isShowing, content: {
            AddView()
                .environmentObject(viewState)
        })
       
    }
}

struct AddView: View {
    @EnvironmentObject var viewState: VerificationViewState
    var body: some View {
        VStack {
            Button("Turn off Sheet", action: {
                self.viewState.isShowing.toggle()
            })
            AddView2(viewState: viewState)
        }
    }
}

struct AddView2: View {
    @ObservedObject var viewState: VerificationViewState
    
    var body: some View {
        Button("Change background Color", action: {
            self.viewState.changeColorUI = .pink
        })
    }
}



#Preview {
    ParentView(viewState: VerificationViewState())
}

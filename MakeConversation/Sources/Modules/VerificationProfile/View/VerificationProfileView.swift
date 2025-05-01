//
//  VerificationOTPView.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 27/3/25
//
//

import SwiftUI
import PhotosUI

struct VerificationProfileView: View {
    
    @StateObject var viewState: VerificationProfileViewState
    @State private var avatarImage: UIImage? = UIImage(resource: .avatar)
    @State private var pickerItem: PhotosPickerItem?
    @State private var selectedItem: UIImage?
    @State var isShowingnPhotoPicker: Bool = false

    
    var body: some View {
        VStack {
            Spacer()
//                .frame(height: 46)
            
            PhotosPicker(
                selection: $pickerItem,
                matching: .images,
                photoLibrary: .shared()) {
                    ZStack {
                        if let avatarImage = avatarImage {
                            Image(uiImage: avatarImage)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                        } else {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .foregroundColor(.gray)
                        }
                        Circle()
                            .fill(Color.white)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(.black)
                            )
                            .offset(x: 35, y: 35)
                    }
            }

            
            Spacer()
                .frame(height: 31)
            
            TextField("First Name (Required)", text: self.$viewState.firstName)
                .textFieldStyle(CustomTextFieldStyle(keyboadType: .default))
                .frame(height: 36)
                .frame(maxWidth: .infinity)
                .background(.neutral)
            
            Spacer()
                .frame(height: 12)
            
            TextField("Last Name (Optional)", text: self.$viewState.lastName)
                .textFieldStyle(CustomTextFieldStyle(keyboadType: .default))
                .frame(height: 36)
                .frame(maxWidth: .infinity)
                .background(.neutral)
            
            Spacer()
            
            Button("verification.button.continue") {
                // TODO: Handle when user taped on continue button
                print("Debug: Clicked on Continue Button")
                self.viewState.saveButtonDidTap = true
                
            }
            .padding(.bottom)
            .buttonStyle(FilledButtonStyle(width: .infinity, active: viewState.saveButtonDidTap))
        }
        .onChange(of: pickerItem) {
            Task {
                if let data = try await pickerItem?.loadTransferable(type: Data.self),
                   let uiImage = UIImage(data: data) {
                    avatarImage = uiImage
                }
            }
        }

        .padding(.horizontal, 24)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                HStack {
                    Button(action: {
                        self.viewState.backButtonDidTap = true
                    }) {
                        Image(.arrowLeadingIcon)
                    }
                    
                    Text("Your Profile")
                }
            }
        }
    }
}

//Preview
struct VerificationProfilePreviews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ApplicationViewBuilder.stub.build(view: .verificationProfile)
           }
    }
}

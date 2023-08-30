//
//  ImagePickerGround.swift
//  Freesia
//
//  Created by SeungHwan Oh on 2023/08/29.
//

import SwiftUI

struct ImagePickerGround: View {
    @State private var openPhoto = false
    @State private var image = UIImage()

    var body: some View {
        NavigationView {
            VStack {
                Image(uiImage: self.image)
                    .resizable()
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
            .navigationBarTitle("홈", displayMode: .inline)
                .navigationBarItems(trailing:
                                        
                        Button(action: {
                            self.openPhoto = true
                        }) {
                            Text("사진 추가")
                            }
                )
        }
        .sheet(isPresented: $openPhoto) {
            ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
        }
    }
}

struct ImagePickerGround_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerGround()
    }
}

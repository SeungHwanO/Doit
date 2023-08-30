//
//  DoitRecodeView.swift
//  Freesia
//
//  Created by SeungHwan Oh on 2023/08/29.
//

import SwiftUI

struct DoitRecodeView: View {
    @State var RecodeString: String = ""
    @State private var openPhoto = false
    @State private var image = UIImage()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Day8")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 227/255 , green: 171/255, blue: 54/255))
                Text("2023.8.29")
                    .font(.callout)
                    .foregroundColor(.gray)
                
                
                Text("사진 올리기")
                
                HStack {
                    
                    Button (action: {self.openPhoto = true}) {
                        Text("IMG")
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                            .frame(maxWidth: 80, maxHeight: 80)
        //                    .background(.black)
                            .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(.gray, lineWidth: 2)
                            )
                    }
                    Image(uiImage: self.image)
                        .resizable()
                        .scaledToFit()
                        .background(.green)
                        .frame(maxWidth: 80, maxHeight: 80)
                        
                    
                    
                }
                
                    
                Button {
                    
                } label: {
                    
                }
                
                
                Text("글 작성하기")
                TextEditor(text: $RecodeString)
                    .frame(minHeight: 40, maxHeight: 200)
                    .border(Color.gray, width: 2)
                    .cornerRadius(5)
    //                .padding(.vertical)
                Spacer()
                
                NavigationLink {
                    
                } label: {
                    Text("기록하기")
                        .padding(5)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 242/255 , green: 187/255, blue: 22/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                        .padding(.vertical,10)
                }
                
            }
            .padding(10)
        }
        .sheet(isPresented: $openPhoto) {
            ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
        }

    }
}

struct DoitRecodeView_Previews: PreviewProvider {
    static var previews: some View {
        DoitRecodeView()
    }
}

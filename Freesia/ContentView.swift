//
//  ContentView.swift
//  Freesia
//
//  Created by SeungHwan Oh on 2023/08/22.
//

/*
 
 background 색상 :                 Color(red: 234/255 , green: 234/255, blue: 234/255)

 
 font 강조 크기 : semibold -> 15
 
    font 강조색상 : Color(red: 227/255 , green: 171/255, blue: 54/255)
    button, 시그니처 색상 : Color(red: 242/255 , green: 187/255, blue: 22/255)
    tag font 색상 : (Color(red: 255/255, green: 160/225, blue: 48/225))
 [[card view 스타일]]
 .frame(maxWidth: .infinity)
 .background(Color.white)
 .cornerRadius(7)
 .shadow(color: Color.gray.opacity(0.5), radius: 7)
 .padding(.horizontal,10)
 .padding(.top, 20)
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainTabView()
//        ImagePickerGround()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

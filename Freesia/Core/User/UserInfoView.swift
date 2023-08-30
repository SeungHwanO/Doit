//
//  UserInfoView.swift
//  Freesia
//
//  Created by SeungHwan Oh on 2023/08/25.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        ZStack {
            Color(red: 234/255 , green: 234/255, blue: 234/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("profileIMG")
                    .resizable()
                    .frame(maxWidth: 170,maxHeight: 170)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.orange, lineWidth: 2)
                    }
                    .shadow(radius: 4)
                Text("개발하는 Hwani")
                    .font(.system(size: 26).bold())
                    .foregroundColor(Color(red: 227/255 , green: 171/255, blue: 54/255))
                    .padding(.bottom, 10)
                Group {
                    Text("수 정 하 기")
                    Text("로 그 아 웃")
                }
                .font(.system(size: 15))
                .fontWeight(.thin)
                .padding(.bottom,2)
            }
        }
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}

//
//  AuthView.swift
//  Freesia
//
//  Created by SeungHwan Oh on 2023/08/22.
//

import SwiftUI

struct AuthView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
                
            VStack{
                Text("슬기로운 자기계발과 취미생활")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title2)
                    .padding(.horizontal, 15)
                    .padding(.top, 5)
                Text("Do It")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                    .padding(.horizontal, 15)
                    .padding(.vertical, 5)
                Spacer()
                
            }
        }
        .foregroundColor(.white)
        
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}

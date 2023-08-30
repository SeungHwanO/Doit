//
//  DoitTogetherView.swift
//  Freesia
//
//  Created by SeungHwan Oh on 2023/08/29.
//

import SwiftUI

struct DoitTogetherView: View {
    var body: some View {
        ScrollView {
            VStack {
                
                //PostView
                VStack(spacing: 0) {
                    //profile head
                    HStack {
                        Image("profileIMG")
                            .resizable()
                            .frame(maxWidth: 40,maxHeight: 40)
                            .background(Color.yellow)
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(.gray, lineWidth: 1)
                        }
                        Text("개발하는 hwani")
                            .font(.callout)
                            .fontWeight(.semibold)
                    }
                    .frame(maxWidth: .infinity,alignment: .leading)
                    
                    
                    //post body
                    Image("sample")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(5)
                        .padding(.vertical, 10)
                    
                    
                    
                    
                    HStack {
                        Text("화이팅🔥 • 10")
                            .foregroundColor(.white)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 2)
                            .background(Color(red: 242/255 , green: 187/255, blue: 22/255))
                        .cornerRadius(10)
                        
                        Text("대단해요👍🏻 • 10")
                            .foregroundColor(Color(red: 242/255 , green: 187/255, blue: 22/255))
                            .padding(.horizontal, 10)
                            .padding(.vertical, 2)
                            .background()
                            .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color(red: 242/255 , green: 187/255, blue: 22/255), lineWidth: 2)
                                )
                        
                            .cornerRadius(10)
                        
                        Spacer()
                        
                        Text("운동")
                            .foregroundColor(.white)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 2)
                            .background(Color(red: 242/255 , green: 187/255, blue: 22/255))
                            .cornerRadius(10)
                    }
                    
                    VStack {
                        HStack{
                            Text("Day8")
                                .fontWeight(.bold)
                            
                            Text("하루 한시간 운동하기")
                            
                            Spacer()
                            
                        }
                        Group{
                            Text("테스트 텍스트입니다.🙌🏻")
                                .fontWeight(.thin)
                            Text("2023.8.29")
                                .fontWeight(.thin)
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.vertical, 5)

                    
                    

                    
                }
            }
            .padding(10)
        }
        .font(.footnote)
    }
}

struct DoitTogetherView_Previews: PreviewProvider {
    static var previews: some View {
        DoitTogetherView()
    }
}

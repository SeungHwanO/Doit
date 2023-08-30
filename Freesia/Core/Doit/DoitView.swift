//
//  DoitListView.swift
//  Freesia
//
//  Created by SeungHwan Oh on 2023/08/22.
//

import SwiftUI

struct DoitView: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color(red: 234/255 , green: 234/255, blue: 234/255)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    //상단 카드뷰
                    VStack {
                        //카드뷰 내부 콘텐츠 padding(10) 지정
                        VStack {
                            
                            HStack {
                                VStack {

                                    Group {
                                        HStack {
                                            Text("Day 8")
                                                .font(.title2)
                                                .fontWeight(.bold)
                                            
                                            Text("3%")
                                                .frame(maxWidth: .infinity, alignment: .trailing)
                                                .font(.system(size: 15))
                                                .fontWeight(.semibold)
                                        }
                                        
                                        Text("하루 1시간씩 조깅하기🏃🏻")
                                            .fontWeight(.semibold)
                                            .font(.system(size: 18))
                                            
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(Color(red: 227/255 , green: 171/255, blue: 54/255))

                                }
                            }

                            
                            HStack {
                                
                                Text("운동")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 2)
                                    .background(Color(red: 242/255 , green: 187/255, blue: 22/255))
                                    .cornerRadius(10)
                                
                                NavigationLink {
                                    DoitRecodeView()
                                } label: {
                                    VStack {
                                        VStack {
                                            Text("기록하기")
                                                .font(.system(size: 15))
                                                .font(.footnote)
                                                .fontWeight(.semibold)
                                                .padding(5)
                                        }
                                        .background(Color(red: 242/255 , green: 187/255, blue: 22/255))
                                        .cornerRadius(5)
                                    }
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                }
                                .foregroundColor(.white)
                                //.buttonStyle(EmpeyActionStyle())
                            }

                        }
                        .padding(10)

                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(7)
                    .shadow(color: Color.gray.opacity(0.5), radius: 7)
                    .padding(.horizontal,10)
                    .padding(.top, 0)

                    Spacer()

                    ScrollView(showsIndicators: false) {
                        
                        
                        
                        
                        VStack {
                            VStack(spacing: 0) {
                                
                                //post body
                                Image("sample")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(5)
                                    .padding(.bottom, 10)
                                    
                                
                                
                                
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
                                .font(.footnote)
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
                                .font(.footnote)
                                .padding(.vertical, 5)

                                
                                

                                
                            }
                            .padding(5)
                            

                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(7)
//                        .shadow(color: Color.gray.opacity(0.5), radius: 7)
                        .padding(.horizontal,10)
                        .padding(.top, 20)
                        
                    }
                    

                }

                
                

                
            }
            //ZStack
            
        }
        
        
        
        
        
        
    }
}

struct DoitView_Previews: PreviewProvider {
    static var previews: some View {
        DoitView()
    }
}

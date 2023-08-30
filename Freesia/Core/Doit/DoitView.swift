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
                                
                                Text("# 운동")
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
                        VStack(spacing: 0) {
                            
                            VStack(spacing: 0) {
                                Group {
                                    Text("Day 7")
                                        .font(.system(size: 15))
                                        .fontWeight(.semibold)
                                        .padding(.bottom,0)
                                        .foregroundColor(Color(red: 227/255 , green: 171/255, blue: 54/255))
                                    Text("2023.08.30")
                                        .font(.footnote)
                                        .fontWeight(.regular)
                                        .padding(.bottom,5)
                                        .foregroundColor(Color(red: 227/255 , green: 171/255, blue: 54/255))
                                        
                                    Image("sample")
                                        .resizable()
                                        .frame(maxWidth: .infinity)
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.bottom,5)
                                    
                                    Text("더운 날씨에도 1시간 조깅하기 완료!!🔥")
                                        .font(.footnote)
                                        .fontWeight(.light)
                                        .padding(.bottom,5)
                                    HStack {
                                        Text("대단해요 10")
                                        Text("멋쪄요 2")
                                        Text("같이해요 5")
                                        
                                    }
                                    .font(.system(size: 11))
                                    .fontWeight(.light)
                                    .foregroundColor(Color(red: 255/255, green: 160/225, blue: 48/225))
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .padding(10)
                            
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

//
//  DoitListView.swift
//  Freesia
//
//  Created by SeungHwan Oh on 2023/08/23.
//

import SwiftUI

struct DoitListView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 234/255 , green: 234/255, blue: 234/255)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView(showsIndicators: false) {

                    NavigationLink {
                        DoitView()
                    } label: {
                        //카드뷰 디자인 stack
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
                                    
                                    Spacer()
                                }

                            }
                            .padding(10)

                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(7)
                        .shadow(color: Color.gray.opacity(0.5), radius: 7)
                        .padding(.horizontal,10)
                        .padding(.top, 20)
                    }
                    
                    
                        
                    HStack(spacing:0) {
                        Spacer()
                        
                        NavigationLink {
                            DoitPlusView()
                        } label: {
                            Image(systemName: "plus.circle.fill")
                                .accentColor(Color(red: 242/255 , green: 187/255, blue: 22/255))
                                .font(.system(size: 40))
                            
                        }
                        
                        
                        
                        Spacer()
                    }
                    
                }

                
                


                    
                    


                
                

                
            }            //ZStack
        }
        
    }
}

struct DoitListView_Previews: PreviewProvider {
    static var previews: some View {
        DoitListView()
    }
}

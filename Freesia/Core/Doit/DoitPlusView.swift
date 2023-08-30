//
//  DoitPlusView.swift
//  Freesia
//
//  Created by SeungHwan Oh on 2023/08/24.
//

import SwiftUI

struct DoitPlusView: View {
    @State var TargetName: String = ""
    @ObservedObject var TargetDay = NumbersOnly()
    
    var body: some View {
        NavigationStack {
            ZStack {
//                Color(red: 234/255 , green: 234/255, blue: 234/255)
//                    .edgesIgnoringSafeArea(.all)

                VStack(alignment: .leading, spacing: 0) {
                    
                    Text("제목")
                        .font(.callout)
                    TextField("제목", text: $TargetName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.vertical)
                    
                    //목표일 수
                    Text("목표일수")
                    
                    HStack {
                        TextField("목표일수", text: $TargetDay.value)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.vertical)
                            .frame(maxWidth: 80)
                        Text("일")
                    }

                        
                    //카테고리
                    Text("카테고리")
                    
                    
                    VStack {
                        HStack {
                            Group {
                                
                                Button {
                                    
                                } label: {
                                    Text("운동")
                                        .padding(2)
                                }
                                
                                Button {
                                    
                                } label: {
                                    Text("공부")
                                        .padding(2)

                                }
                                
                                Button {
                                    
                                } label: {
                                    Text("음식")
                                        .padding(2)

                                }
                                
                                Button {
                                    
                                } label: {
                                    Text("컴퓨터")
                                        .padding(2)

                                }
                            }
                            .background((Color(red: 255/255, green: 160/225, blue: 48/225)))
                            .font(.callout)
                            .foregroundColor(.black)
                            .cornerRadius(5)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)

                        HStack {
                            Group {
                                Button {
                                    
                                } label: {
                                    Text("음악")
                                        .padding(2)
                                }
                                
                                Button {
                                    
                                } label: {
                                    Text("사진")
                                        .padding(2)

                                }
                                
                                Button {
                                    
                                } label: {
                                    Text("공예")
                                        .padding(2)

                                }
                                Button {
                                    
                                } label: {
                                    Text("교양")
                                        .padding(2)

                                }
                            }
                            .background((Color(red: 255/255, green: 160/225, blue: 48/225)))
                            .font(.callout)
                            .foregroundColor(.black)
                            .cornerRadius(5)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)

                    }
                    
                    //작성완료
                    Spacer()
                    NavigationLink {
                        DoitListView()
                    } label: {
                        Text("작성 완료")
                            .padding(5)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 242/255 , green: 187/255, blue: 22/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                            .padding(.vertical,10)
                    }
                    

                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(.white)
                .padding(10)
                .navigationBarTitle("추가하기", displayMode: .inline)
            }
            
        }
    }
}

struct DoitPlusView_Previews: PreviewProvider {
    static var previews: some View {
        DoitPlusView()
    }
}

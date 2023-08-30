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
                VStack {
                    HStack {
                        Image("profileIMG")
                            .resizable()
                            .frame(maxWidth: 40,maxHeight: 40)
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(.black, lineWidth: 1)
                        }
                        Text("개발하는 hwani")
                            .font(.callout)
                            .fontWeight(.semibold)
                    }
                    .frame(maxWidth: .infinity,alignment: .leading)
                    
                    Image("")
                }
            }
            .padding(10)
        }
    }
}

struct DoitTogetherView_Previews: PreviewProvider {
    static var previews: some View {
        DoitTogetherView()
    }
}

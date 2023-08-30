//
//  MainTabView.swift
//  Freesia
//
//  Created by SeungHwan Oh on 2023/08/22.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selection = 1

    init() {
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().backgroundColor = .white

            
    }

    
    var body: some View {
        
        
        
        TabView(selection:$selection) {
            Text("함께보기")
                .tabItem {
                    Image(systemName: "person.2")
                    Text("함께보기")
                }
            
            DoitListView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("두잇 리스트")
                }
                
            UserInfoView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("내정보")
                }

            
            
        }
        .font(.headline)
        .accentColor(Color(red: 227/255 , green: 171/255, blue: 54/255))
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

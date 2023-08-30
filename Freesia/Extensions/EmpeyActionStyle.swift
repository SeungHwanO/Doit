//
//  EmpeyActionStyle.swift
//  Freesia
//
//  Created by SeungHwan Oh on 2023/08/23.
//
//  Button 클릭 시 깜박임 제거

import SwiftUI
 
struct EmpeyActionStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}


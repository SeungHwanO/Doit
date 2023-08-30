//
//  GenderStyle.swift
//  Freesia
//
//  Created by SeungHwan Oh on 2023/08/25.
//

import SwiftUI


struct GenderStyle: ButtonStyle {
  @State var isSeleceted: Bool
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
//      .padding(.vertical, 12)
//      .padding(.horizontal, 45)
      .foregroundColor(isSeleceted ? Color.white : Color("coolGrey"))
      .background(isSeleceted ? Color("lightPeriwinkle") : Color.white)
      .cornerRadius(8)
      .overlay(RoundedRectangle(cornerRadius: 8)
        .stroke(Color("silver"), lineWidth: 2)
      )
  }
}

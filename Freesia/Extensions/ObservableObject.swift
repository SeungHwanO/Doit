//
//  ObservableObject.swift
//  Freesia
//
//  Created by SeungHwan Oh on 2023/08/28.
//

import SwiftUI

class NumbersOnly: ObservableObject {
    @Published var value = "" {
        didSet {
            let filtered = value.filter { $0.isNumber }
            
            if value != filtered {
                value = filtered
            }
        }
    }
}

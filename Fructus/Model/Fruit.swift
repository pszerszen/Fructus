//
//  FruitModel.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 03/11/2021.
//

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    var title: String
    var headline: String
    var image: String {
        return title.lowercased()
    }
    var gradientColors: [Color] {
        let lightColor = Color("Color\(title)Light")
        let darkColor = Color("Color\(title)Dark")
        
        return [lightColor, darkColor]
    }
    var description: String
    var nutrition: [String]
}

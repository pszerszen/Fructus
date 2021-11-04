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
    var lightColor: Color {
        return Color("Color\(title)Light")
    }
    var darkColor: Color {
        Color("Color\(title)Dark")
    }
    var gradientColors: [Color] {
        return [lightColor, darkColor]
    }
    var description: String
    var nutrition: [String]
}

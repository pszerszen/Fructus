//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 04/11/2021.
//

import SwiftUI

struct FruitHeaderView: View {

    var fruit: Fruit

    @State private var isAnimatingImage = false

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20.0)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }
        .frame(maxWidth: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}

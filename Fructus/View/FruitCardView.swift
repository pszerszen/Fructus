//
//  FruitCardView.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 03/11/2021.
//

import SwiftUI

struct FruitCardView: View {

    private let shadowColor = Color(red: 0, green: 0, blue: 0, opacity: 0.15)

    // MARK: - PROPERTIES
    @State private var isAnimating = false

    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(
                        color: shadowColor,
                        radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                // FRUIT: TITLE
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: shadowColor, radius: 2, x: 2, y: 2)
                // FRUIT: HEADLINE
                Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // BUTTON: START
                StartButtonView()
            } //: VSTACK
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity,
               alignment: .center)
        .background(LinearGradient(
            gradient: Gradient(colors: [
                Color("ColorBlueberryLight"),
                Color("ColorBlueberryDark")]),
            startPoint: .top,
            endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20.0) //: ZSTACK
    }
}
// MARK: - PREVIEW

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}

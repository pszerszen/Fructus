//
//  OnboardingView.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 03/11/2021.
//

import SwiftUI

struct OnboardingView: View {

    var body: some View {
        TabView {
            ForEach(fruitsData) { FruitCardView(fruit: $0) }

        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20.0)
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

//
//  StartButtonView.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 03/11/2021.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        Button {
            print("Exit the onboarding")
        } label: {
            HStack(spacing: 20) {
                Text("Start")

                Image(systemName: "arrow.right.circle")
                    .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal, 16.0)
            .padding(.vertical, 10.0)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.25)
            )
        } //: BUTTON
        .accentColor(.white)

    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}

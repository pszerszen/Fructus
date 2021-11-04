//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 04/11/2021.
//

import SwiftUI

struct SettingsLabelView: View {

    let labelText: String
    let labelImage: String

    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruktus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

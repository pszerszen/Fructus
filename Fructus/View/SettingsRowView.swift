//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 04/11/2021.
//

import SwiftUI

struct SettingsRowView: View {

    let name: String
    let content: String

    var body: some View {
        HStack {
            Text(name)
                .foregroundColor(.gray)
            Spacer()
            Text(content)
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}

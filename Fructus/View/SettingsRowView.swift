//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 04/11/2021.
//

import SwiftUI

struct SettingsRowView: View {

    let name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil

    var body: some View {
        HStack {
            Text(name)
                .foregroundColor(.gray)
            Spacer()
            if let content = content {
                Text(content)
            } else if let linkLabel = linkLabel,
                      let linkDestination = linkDestination {
                Link(linkLabel, destination: URL(string: "https://\(linkDestination)")!)
                Image(systemName: "arrow.up.right.square")
                    .foregroundColor(.pink)
            } else {
                EmptyView()
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "John / Jane")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Developer",
                            linkLabel: "SwiftUI masterclass",
                            linkDestination: "swiftuimaster.com")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Developer")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}

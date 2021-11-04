//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 04/11/2021.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

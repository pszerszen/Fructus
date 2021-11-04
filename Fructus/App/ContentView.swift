//
//  ContentView.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 03/11/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES


    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitsData) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}

//
//  ContentView.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 03/11/2021.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            List {
                ForEach(fruitsData.shuffled()) { fruit in
                    NavigationLink {
                        FruitDetailView(fruit: fruit)
                    } label: {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}

//
//  ContentView.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 03/11/2021.
//

import SwiftUI

struct ContentView: View {

    @State private var isShowingSettings = false

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
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })
            )
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}

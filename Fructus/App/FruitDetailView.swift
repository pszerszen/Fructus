//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 04/11/2021.
//

import SwiftUI

struct FruitDetailView: View {

    let fruit: Fruit

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // MARK: - HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20.0) {
                        // MARK: - TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.darkColor)

                        // MARK: - HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)

                        // MARK: - NUTRIENTS
                        FruitNutrientsView(fruit: fruit)

                        // MARK: - SUBHEADER
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.lightColor)

                        // MARK: - DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)

                        // MARK: - LINK
                        SourceLinkView()
                            .padding(.top, 10.0)
                            .padding(/*@START_MENU_TOKEN@*/.bottom, 40.0/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.horizontal, 20.0)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}

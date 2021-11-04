//
//  SettingsView.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 04/11/2021.
//

import SwiftUI

struct SettingsView: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20.0) {
                    Text("")
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        })
                )
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()

    }
}

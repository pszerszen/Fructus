//
//  SettingsView.swift
//  Fructus
//
//  Created by Piotr Szerszeń on 04/11/2021.
//

import SwiftUI

struct SettingsView: View {

    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding = false

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20.0) {
                    // MARK: - Section 1
                    GroupBox(
                        label:
                            SettingsLabelView(
                                labelText: "Fruktus",
                                labelImage: "info.circle")) {
                                    Divider()
                                        .padding(.vertical, 4.0)
                                    HStack(alignment: .center, spacing: 10.0) {
                                        Image("logo")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80.0, height: 80.0)
                                            .cornerRadius(9)
                                        Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                            .font(.footnote)
                                    }
                    }

                    // MARK: - Section 2
                    GroupBox {
                        Divider()
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                            .padding(.vertical, 8.0)
                            .frame(minHeight: /*@START_MENU_TOKEN@*/60.0/*@END_MENU_TOKEN@*/)
                            .layoutPriority(/*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)

                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))

                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                            .padding()
                    }


                    // MARK: - Section 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        
                        SettingsRowView(name: "Developer", content: "Piotr Szerszeń")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }

                }
                .padding(.horizontal, 10.0)
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

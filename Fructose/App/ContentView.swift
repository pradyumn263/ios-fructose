//
//  ContentView.swift
//  Fructose
//
//  Created by Pradyumn Shukla on 23/09/20.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item),
                        label: {
                            FruitRowView(fruit: item)
                                .padding(.vertical, 5)
                        }) //: NAVIGATIONLINK
                }
            } //: LIST
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings.toggle()
            }) {
                Image(systemName: "slider.horizontal.3")
            }
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
        )} //: NAVIGATION
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}

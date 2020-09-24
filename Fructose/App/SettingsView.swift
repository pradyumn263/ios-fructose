//
//  SettingsView.swift
//  Fructose
//
//  Created by Pradyumn Shukla on 24/09/20.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - Section 1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructose", labelImage: "info.circle"),
                        content: {
                            Divider().padding(.vertical, 4)
                            HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(9)
                                Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietry fiber, citamins and much more.")
                                    .font(.footnote)
                            })
                        })
                    
                    //MARK: - Section 2
                    
                    //MARK: - Section 3
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"), content: {
                        
                        SettingsRowView(name:"Developer", content: "Pradyumn Shukla")
                        SettingsRowView(name: "Compatibility", content:"iOS 14")
                        SettingsRowView(name:"Website", linkLabel: "devs book", linkDestination: "devs-book.tech")
                        SettingsRowView(name: "Github", linkLabel: "pradyumn263", linkDestination: "github.com/pradyumn263")
                        
                    })
                    
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image.init(systemName: "xmark")
                }))
                .padding()

            } //: SCROLL
            
        } //: NAVIGATION
        
    }
}

//MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            
            
    }
}

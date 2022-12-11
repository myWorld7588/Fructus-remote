//
//  SettingsView.swift
//  Fructus
//
//  Created by Jake Choi on 12/10/22.
//

import SwiftUI

struct SettingsView: View {
    
    
    // MARK: - PROPERTY
    
    @Environment(\.isPresented) private var isPresented

    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: - SECTION 1
                    
                    GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 20) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                            
                        }
                        
                    }
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {                        
                        
                        SettingRowView(name: "Developer", content: "myWorld7588")
                        SettingRowView(name: "Designer", content: "myWorld7588")
                        SettingRowView(name: "Compatibility", content: "iOS16")
                        SettingRowView(name: "Website", linkLabel: "GitHub", linkDestination: "https://github.com/myWorld7588")
                        SettingRowView(name: "Twitter")
                        SettingRowView(name: "SwiftUI", content: "3.0")
                        SettingRowView(name: "Version", content: "1.1.0")
                    } //: BOX
                    
                    
                } //: VSTACK
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                
            } //: SCROLL
        } //: NAVIGATION
    }
}



// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

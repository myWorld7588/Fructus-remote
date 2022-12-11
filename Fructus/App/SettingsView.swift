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
                    
                    
                    
                    
                    Text("Hello, World!")
                    
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

//
//  SettingRowView.swift
//  Fructus
//
//  Created by Jake Choi on 12/10/22.
//

import SwiftUI

struct SettingRowView: View {
    
    // MARK: - PROPERTY
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)            
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - PREVIEW


struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingRowView(name: "Developer", content: "myWorld7588")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        
    }
}

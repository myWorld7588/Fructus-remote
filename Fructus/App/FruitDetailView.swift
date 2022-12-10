//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Jake Choi on 12/10/22.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK: - PROPERTY
    
    var fruit: Fruit
    
    // MARK: - BODY
    
    
    var body: some View {
        Text(fruit.title)
    }
}

// MARK: - PREVIEW


struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}

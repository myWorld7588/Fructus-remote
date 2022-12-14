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
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .center, spacing: 20) {
                    // MARK: - HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitsNutrientsView(fruit: fruit)
                        
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTIION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationBarTitleDisplayMode(.inline)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW


struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}

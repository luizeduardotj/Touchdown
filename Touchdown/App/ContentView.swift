//
//  ContentView.swift
//  Touchdown
//
//  Created by Luiz Oliveira on 24/12/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, keyWindow?.safeAreaInsets.top ?? 0 + 10)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeaturePageView()
                                .padding(.vertical, 10)
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayourt, spacing: 15) {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            }
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                                .padding(.vertical, keyWindow?.safeAreaInsets.bottom)
                        }
                    })//: Scroll
                    
                    
                } //: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .all)
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Mini")
            .environmentObject(Shop())
    }
}

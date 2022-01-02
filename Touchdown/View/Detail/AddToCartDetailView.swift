//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Luiz Oliveira on 02/01/22.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {}) {
            Spacer()
            Text("Add to card".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        } //: Button
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? 0,
                green: shop.selectedProduct?.green ?? 0,
                blue: shop.selectedProduct?.blue ?? 0
            )
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

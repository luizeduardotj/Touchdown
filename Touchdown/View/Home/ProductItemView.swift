//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Luiz Oliveira on 27/12/21.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTY
    
    @State var product: ProductModel
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            //IMAGE
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: Image
            .background(
                Color(
                    red: product.red,
                    green: product.green,
                    blue: product.blue
                ))
            .cornerRadius(12)
            
            //NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            //PRICE
            Text("$\(product.price)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

// MARK: - PREVIEW
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}

//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Luiz Oliveira on 27/12/21.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - PROPERTY
    @State var brand: BrandModel
    
    var body: some View {
        VStack {
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding(3)
                .background(Color.white.cornerRadius(12))
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray, lineWidth: 1)
                )
        }
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}

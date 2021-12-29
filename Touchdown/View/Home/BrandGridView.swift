//
//  BrandgGridView.swift
//  Touchdown
//
//  Created by Luiz Oliveira on 27/12/21.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayourt, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            } //:GRID
            .frame(height: 200)
            .padding(15)
        } //: SCROLL
    }
}

struct BrandgGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}

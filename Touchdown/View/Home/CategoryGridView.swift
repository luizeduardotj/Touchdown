//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Luiz Oliveira on 27/12/21.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(
            .horizontal,
            showsIndicators: false
        ) {
            LazyHGrid(
                rows: gridLayourt,
                alignment: .center,
                spacing: columnSpacing,
                pinnedViews: []
            ) {
                Section(
                    header: SectionView(rotateClockWise: false),
                    footer: SectionView(rotateClockWise: true)
                ){
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                            .scaledToFit()
                    }
                }
            } //: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        } //: SCROLL
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}

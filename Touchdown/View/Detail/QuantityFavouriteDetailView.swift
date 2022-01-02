//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Luiz Oliveira on 02/01/22.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    // MARK: - PROPERTIES
    @State private var count: Int = 0
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(action: {
                if count > 0 {
                    count -= 1
                }
            }) {
                Image(systemName: "minus.circle")
            }
            
            Text("\(count)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if count < 100 {
                    count += 1
                }
            }) {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
        } //: HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

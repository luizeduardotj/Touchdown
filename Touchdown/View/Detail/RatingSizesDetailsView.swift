//
//  RatingSizesDetailsView.swift
//  Touchdown
//
//  Created by Luiz Oliveira on 02/01/22.
//

import SwiftUI

struct RatingSizesDetailsView: View {
    // MARK: - PROPERTY
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            // Ratings
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}) {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        } //: Button
                        
                    }
                } //: HStack
            } //: VStack
            
            Spacer()
            
            // Sizes
            
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}) {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                            
                        }
                    }
                } //:HStack
            }
        } //: HStack
    }
}

struct RatingSizesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

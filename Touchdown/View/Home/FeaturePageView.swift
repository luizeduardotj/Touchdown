//
//  FeaturePageView.swift
//  Touchdown
//
//  Created by Luiz Oliveira on 26/12/21.
//

import SwiftUI

struct FeaturePageView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeatureItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturePageView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturePageView()
            .previewDevice("iPhone 13 Pro Max")
            .background(Color.gray)
    }
}

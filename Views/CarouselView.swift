//
//  CarouselView.swift
//  NewsfeedUI-Starter
//
//  Created by Gurdeep Barring on 5/17/22.
//

import SwiftUI

struct CarouselView: View {
    var articles: [NewsArticle]
    var body: some View {
        TabView() {
            ForEach(articles) { article in
                NavigationLink(destination: DetailView(article: article)) {
                        FeatureView(article: article)
                    }.buttonStyle(PlainButtonStyle())
            }
        }
        .aspectRatio(3 / 2, contentMode: .fit)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView(articles: Array(NewsFeed.sampleData.prefix(3)))
    }
}

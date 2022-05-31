//
//  CategoryItem.swift
//  NewsfeedUI-Starter
//
//  Created by Gurdeep Barring on 5/17/22.
//

import SwiftUI

struct CategoryItem: View {
    var article: NewsArticle
    var body: some View {
        VStack(alignment: .leading) {
            RemoteImage(url: article.urlToImage)
                .scaledToFill()
                .frame(width: 155, height: 155)
                .clipped()
                .cornerRadius(5)

            Text(article.title)
                .lineLimit(5)
                .font(.headline)
        }
        .frame(width: 155)
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(article: NewsFeed.sampleData[0])
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

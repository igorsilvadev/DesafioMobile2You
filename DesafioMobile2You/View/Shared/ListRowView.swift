//
//  ListCellView.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 30/01/22.
//

import SwiftUI

struct ListRowView: View {
    var imagePoster: Image
    var title: String
    var year: String
    var genres: String
    
    init (image: Image, title: String, year: String, genres: String) {
        self.imagePoster = image
        self.title = title
        self.year = year
        self.genres = genres
    }
    
    
    var body: some View {
        HStack{
            //MARK: Movie Image
            imagePoster
                .resizable()
                .frame(width: 50)
            //MARK: Title, Year, Genres
            VStack(alignment: .leading){
                Text(title)
                    .bold()
                HStack {
                    Text(year)
                    Text(genres)
                        .lineLimit(1)
                }
                .font(.subheadline)
            }
            .padding(.leading, 10)
            
            Spacer()
        }
        .frame(height: 80)
    }
}

struct ListCellView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(image: Image(uiImage: "https://image.tmdb.org/t/p/original/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg".loadUIImage()), title: "Fight Club", year: "1999", genres: "Drama")
    }
}

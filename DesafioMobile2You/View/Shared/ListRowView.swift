//
//  ListCellView.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 30/01/22.
//

import SwiftUI

struct ListRowView: View {
    var posterPath: String
    var title: String
    var year: String
    var genres: String
    
    
    var body: some View {
        HStack{
            //MARK: Movie Image
            AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/original\(self.posterPath)")) { imagePoster in
                imagePoster
                    .resizable()
                    .frame(width: 60)
            } placeholder: {
                ZStack {
                    //MARK: Black Placeholder Shape
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 60)
                    ProgressView()
                         .progressViewStyle(.circular)
                }
            }
            
            
            //MARK: Title, Year, Genres
            VStack(alignment: .leading){
                Text(title)
                    .bold()
                    .multilineTextAlignment(.leading)
                    
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
        ListRowView(posterPath: "/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg", title: "Fight Club", year: "1999", genres: "Drama")
            .preferredColorScheme(.dark)
    }
}

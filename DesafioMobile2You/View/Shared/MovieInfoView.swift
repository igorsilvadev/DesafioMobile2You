//
//  MovieInfoView.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 29/01/22.
//

import SwiftUI

struct MovieInfoView: View {
    
    @State var isFavorite = false
    var title: String
    var voteCount: Int
    var popularity: Double
    
    
    var body: some View {
        VStack(spacing: 15){
            HStack {
                //MARK: Movie Title
                Text(title)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(3)
                
                //MARK: Favorite Button
                Button {
                    isFavorite.toggle()
                } label: {
                    Image(systemName: isFavorite ? "suit.heart.fill" : "suit.heart")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.primary)
                }
                .padding(.trailing)
            }
            //MARK: Movie Likes and Views
            HStack {
                //Likes
                Image(systemName: "suit.heart.fill")
                //Formata o números de likes baseado na condição do operador ternário
                Text(voteCount > 1000 ? String(format: "%.1fK Likes",Double(voteCount)/1000) : "\(voteCount) Likes")
                    .font(.system(size: 14))
                
                //Popularity
                Image(systemName: "play.tv.fill")
                    .padding(.leading)
                Text(String(format: "%.3f Views", popularity))
                    .font(.system(size: 14))
                Spacer()
            }
        }
    }
}

struct MovieInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MovieInfoView(title: "The Very Best Of Johnny Depp", voteCount: 1200, popularity: 54.400)
    }
}

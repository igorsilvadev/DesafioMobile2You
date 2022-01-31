//
//  ContentView.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 29/01/22.
//

import SwiftUI

struct MovieDetailsView: View {
    
    @StateObject var viewModel: MovieDetailsViewModel
  
    var body: some View {
        ScrollView (showsIndicators: false){
            //MARK: HEADER
            HeaderImageView(posterPath: viewModel.movie?.posterPath ?? "")
            //MARK: Movie Infos
            MovieInfoView(title: viewModel.movie?.title ?? "No Title", voteCount: viewModel.movie?.voteCount ?? 0, popularity: viewModel.movie?.popularity ?? 0.0)
                .padding(.leading, 5)
            //MARK: Similar Movies
            ForEach(viewModel.similarMovies ?? []) { movie in
                ListRowView(posterPath: movie.posterPath ?? "", title: movie.title, year: String(movie.date.prefix(4)), genres: viewModel.getFormattedGenres(ids: movie.genres))
                Divider()
            }
            .padding([.top, .leading], 10)
       
        }
        .edgesIgnoringSafeArea(.top)
    }
}


struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(viewModel: MovieDetailsViewModel(withId: 550))
            .preferredColorScheme(.dark)
    }
}

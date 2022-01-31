//
//  ContentView.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 29/01/22.
//

import SwiftUI

struct MovieDetailsView: View {
    
    @ObservedObject var viewModel: MovieDetailsViewModel
    
    
    init (withId id: Int) {
        self.viewModel = MovieDetailsViewModel(withId: id)
    }
    
    var body: some View {
        
        ZStack {
            
            ScrollView (showsIndicators: false){
                
                //MARK: HEADER
                HeaderImageView(posterPath: viewModel.movie?.posterPath ?? "")
                
                //MARK: Movie Infos
                MovieInfoView(title: viewModel.movie?.title ?? "No Title", voteCount: viewModel.movie?.voteCount ?? 0, popularity: viewModel.movie?.popularity ?? 0.0)
                    .padding(.leading, 5)
                
                //MARK: Similar Movies LIST
                ForEach(viewModel.similarMovies ?? []) { movie in
                    
                    NavigationLink {
                        MovieDetailsView(withId: movie.id)
                    } label: {
                        //MARK: Movie Row
                        ListRowView(posterPath: movie.posterPath ?? "", title: movie.title, year: String(movie.date.prefix(4)), genres: viewModel.getFormattedGenres(ids: movie.genres))
                        Divider()
                            .foregroundColor(.gray)
                            .opacity(0.5)
                    }
                    .foregroundColor(.primary)
                    
                }
                .padding([.top, .leading], 10)
                
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            //MARK: BackButton
            CustomBackButtonView()
        }
    }
    
}



struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(withId: 550)
            .preferredColorScheme(.dark)
    }
}

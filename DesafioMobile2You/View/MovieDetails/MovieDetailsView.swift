//
//  ContentView.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 29/01/22.
//

import SwiftUI

struct MovieDetailsView: View {
    var body: some View {
        ScrollView (showsIndicators: false){
            //MARK: HEADER
            HeaderImageView(urlImage: "https://image.tmdb.org/t/p/original/xRyINp9KfMLVjRiO5nCsoRDdvvF.jpg")
            //MARK: Movie Infos
            MovieInfoView()
                .padding(.leading, 5)
            //MARK: Similar Movies
            ForEach(0..<5) { _ in
                ListRowView(urlImage: "https://image.tmdb.org/t/p/original/iZf0KyrE25z1sage4SYFLCCrMi9.jpg" )
                Divider()
            }
            .padding([.top, .leading], 10)
       
        }
        .edgesIgnoringSafeArea(.top)
    }
}


struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView()
            .preferredColorScheme(.dark)
    }
}

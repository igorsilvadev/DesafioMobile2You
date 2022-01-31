//
//  SimilarMoviesList.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 30/01/22.
//

import Foundation


struct SimilarMoviesList: Decodable {
    let movies: [SimilarMovie]
}

struct SimilarMovie: Decodable, Identifiable {
    let id: Int
    let title: String
    let posterPath: String?
    let popularity: Double
    let genres: [Int]
    let date: String
    let voteCount: Int
}



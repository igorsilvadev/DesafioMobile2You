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

extension SimilarMoviesList {
    enum CodingKeys: String, CodingKey {
        case movies = "results"
    }
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


extension SimilarMovie {
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case posterPath = "poster_path"
        case popularity = "popularity"
        case genres = "genre_ids"
        case date = "release_date"
        case voteCount = "vote_count"
    }
}

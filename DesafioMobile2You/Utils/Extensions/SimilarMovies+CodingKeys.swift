//
//  SimilarMovies+CodingKeys.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 31/01/22.
//

import Foundation

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


extension SimilarMoviesList {
    enum CodingKeys: String, CodingKey {
        case movies = "results"
    }
}

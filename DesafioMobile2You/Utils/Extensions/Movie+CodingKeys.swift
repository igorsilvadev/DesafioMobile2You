//
//  Movie+CodingKeys.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 31/01/22.
//

import Foundation

extension Movie {
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case popularity = "popularity"
        case voteCount = "vote_count"
        case date = "release_date"
        case posterPath = "poster_path"
        case genres = "genres"
    }
}

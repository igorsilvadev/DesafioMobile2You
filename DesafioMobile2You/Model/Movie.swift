//
//  Movie.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 29/01/22.
//

import Foundation
import SwiftUI

struct Movie: Decodable {
    let id: Int
    let title: String
    let popularity: Double
    let voteCount: Int
    let date: String
    let posterPath: String?
    let genres: [Genre]
    
}


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

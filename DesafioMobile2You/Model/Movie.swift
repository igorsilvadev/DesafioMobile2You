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




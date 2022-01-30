//
//  Genre.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 30/01/22.
//

import Foundation


struct Genre: Decodable {
    let id: Int
    let name: String
}


struct GenresList: Decodable {
    let genres: [Genre]
}

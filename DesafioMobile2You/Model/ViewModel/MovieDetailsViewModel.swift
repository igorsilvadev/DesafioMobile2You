//
//  MovieDetailsViewModel.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 29/01/22.
//

import Foundation

class MovieDetailsViewModel: ObservableObject {
    
    @Published var movie: Movie?
    @Published var similarMovies: [SimilarMovie]?
    private var genreList: [Int: String] = [:]
    
    init(withId id: Int) {
        self.getMovie(id: id)
        self.getSimilarMovies(id: id)
        self.getGenres()
    }
    
    private func getMovie(id: Int) {
        let urlComplete = "https://api.themoviedb.org/3/movie/\(id)?api_key=c3a646ab5cf74a4e7af99be51584463b"
        MovieAPI.shared.request(url: urlComplete) { [weak self] (result: Result<Movie, Error>) in
            switch result {
            case .success(let movie):
                self?.movie = movie
            case .failure:
                self?.movie = nil
            }
        }
    }
    
    private func getSimilarMovies(id: Int) {
        let urlComplete = "https://api.themoviedb.org/3/movie/\(id)/similar?api_key=c3a646ab5cf74a4e7af99be51584463b&language=en-US&page=1"
        MovieAPI.shared.request(url: urlComplete) { [weak self] (result: Result<SimilarMoviesList, Error>) in
            switch result {
            case .success(let list):
                self?.similarMovies = list.movies
            case .failure:
                self?.similarMovies = nil
            }
        }
    }
    
    
    private func getGenres() {
        let urlComplete = "https://api.themoviedb.org/3/genre/movie/list?api_key=c3a646ab5cf74a4e7af99be51584463b&language=en-US"
        MovieAPI.shared.request(url: urlComplete) { (result: Result<GenresList, Error>) in
            switch result {
            case .success(let list):
                list.genres.forEach { genre in
                    self.genreList[genre.id] = genre.name
                }
                self.objectWillChange.send()
            case .failure:
                break
            }
        }
    }
    
    
    
    func getFormattedGenres(ids: [Int]) -> String {
        if genreList.isEmpty {
            getGenres()
        }
        var formatedGenres = [String]()
            ids.forEach { id in
                formatedGenres.append(genreList[id] ?? "")
            }
        return formatedGenres.joined(separator: ", ")
    }
    
    
    
}

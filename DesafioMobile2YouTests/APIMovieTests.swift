//
//  DesafioMobile2YouTests.swift
//  DesafioMobile2YouTests
//
//  Created by Igor Samoel da Silva on 29/01/22.
//

import XCTest
@testable import DesafioMobile2You

class APIMovieTests: XCTestCase {
    
    func testGetMovie() {
        
        let urlEndPoint = "https://api.themoviedb.org/3/movie/550?api_key=c3a646ab5cf74a4e7af99be51584463b&language=en-US&page=1"
        
        let expectation = self.expectation(description: "GET Movie")
        
        MovieAPI.shared.request(url: urlEndPoint) { (result: Result<Movie, MovieAPIError>) in
            switch result {
            
                case .success(let resultMovie):
                //Verifica se o resultado é igual ao filme solicitado
                    XCTAssertTrue(resultMovie.id == 550, "Different Movie ID")
                    XCTAssertTrue(resultMovie.title == "Fight Club", "Different Movie Title")
                    expectation.fulfill()
                case .failure:
                    XCTFail("API result Error")
                    expectation.fulfill()
            }
        }
        
        wait(for: [expectation], timeout: 10.0)
        
    }
    
    
    func testGetSimilarMovies() {
        
        let urlEndPoint = "https://api.themoviedb.org/3/movie/550/similar?api_key=c3a646ab5cf74a4e7af99be51584463b&language=en-US&page=1"
        
        let expectation = self.expectation(description: "GET Similar Movies List")
        
        MovieAPI.shared.request(url: urlEndPoint) { (result: Result<SimilarMoviesList, MovieAPIError>) in
            
            switch result {
                case .success:
                //Completa o teste caso não ocorra erro no request da API
                    expectation.fulfill()
                case .failure:
                    XCTFail("API result Error")
                    expectation.fulfill()
            }
        }
        
        wait(for: [expectation], timeout: 10.0)
        
    }
    
    
    func testGetGenres() {
        let urlEndPoint = "https://api.themoviedb.org/3/genre/movie/list?api_key=c3a646ab5cf74a4e7af99be51584463b&language=en-US"
        
        let expectation = self.expectation(description: "GET Genre List")
        
        MovieAPI.shared.request(url: urlEndPoint) { (result: Result<GenresList, MovieAPIError>) in
            
            switch result {
                case .success:
                //Completa o teste caso não ocorra erro no request da API
                    expectation.fulfill()
                case .failure:
                    XCTFail("API result Error")
                    expectation.fulfill()
            }
        }
        
        wait(for: [expectation], timeout: 10.0)
        
    }
    
    
    
    
    
    
    
    
}

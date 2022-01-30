//
//  MovieAPI.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 29/01/22.
//

import Foundation
import Alamofire

class MovieAPI {
    
    static let shared = MovieAPI()
    
    func request<T: Decodable>(url: String, completion: @escaping (Result<T, Error>) -> Void) {
        
        AF.request(url, method: .get).responseDecodable { (response : DataResponse<T, AFError>) in
            guard let result = response.value, response.error == nil else {
                completion(.failure(MovieAPIError.responseError))
                return
            }
            completion(.success(result))
        }
        
    }
    
    
    
    
}

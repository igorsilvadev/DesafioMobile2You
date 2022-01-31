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
    
    /// Método que faz o request GET do tipo fornecido no return type
    /// - Parameter url: A URL completa para o request
    /// - Returns: retorna um Result<T,MovieAPIError>
    func request<T: Decodable>(url: String, completion: @escaping (Result<T, MovieAPIError>) -> Void) {
        
        AF.request(url, method: .get).responseDecodable { (response : DataResponse<T, AFError>) in
            guard let result = response.value, response.error == nil else {
                completion(.failure(MovieAPIError.responseError))
                return
            }
            completion(.success(result))
        }
        
    }
    
    
    
    
}

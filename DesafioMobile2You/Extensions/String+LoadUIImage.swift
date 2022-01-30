//
//  String+LoadUIImage.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 29/01/22.
//

import Foundation
import UIKit


extension String {
    
    func loadUIImage() -> UIImage {
        guard let url = URL(string: self) else { return UIImage()}
        guard let data = try? Data(contentsOf: url) else { return UIImage() }
        return UIImage(data: data) ?? UIImage()
    }
    
}

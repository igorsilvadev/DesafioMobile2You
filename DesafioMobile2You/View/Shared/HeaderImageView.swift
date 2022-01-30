//
//  HeaderImageView.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 29/01/22.
//

import SwiftUI

struct HeaderImageView: View {
    var headerImage: Image
    
    init(urlImage: String) {
        self.headerImage = Image(uiImage: urlImage.loadUIImage())
            .resizable()
    }
    
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                if geometry.frame(in: .global).minY <= 0 {
                    //MARK: HEADER
                    headerImage
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(y: geometry.frame(in: .global).minY/9)
                        .clipped()
                } else {
                    //MARK: HEADER
                    headerImage
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height + geometry.frame(in: .global).minY)
                        .clipped()
                        .offset(y: -geometry.frame(in: .global).minY)
                }
                GradientView()
            }
        }
        .frame(height: 400)
    }
}




struct HeaderImageView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderImageView(urlImage: "https://image.tmdb.org/t/p/original/xRyINp9KfMLVjRiO5nCsoRDdvvF.jpg")
    }
}

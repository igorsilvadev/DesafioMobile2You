//
//  HeaderImageView.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 29/01/22.
//

import SwiftUI

struct HeaderImageView: View {
    
    var posterPath: String
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/original\(posterPath)" )) { headerImage in
                    
                    if geometry.frame(in: .global).minY <= 0 {
                        //MARK: HEADER
                        headerImage
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(y: geometry.frame(in: .global).minY/9)
                            .clipped()
                    } else {
                        //MARK: HEADER
                        headerImage
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height: geometry.size.height + geometry.frame(in: .global).minY)
                            .clipped()
                            .offset(y: -geometry.frame(in: .global).minY)
                    }
                } placeholder: {
                    Spacer()
                    ProgressView()
                        .progressViewStyle(.circular)
                        .padding(.top)
                }
                GradientView()
            }
        }
        .frame(height: 400)
    }
}




struct HeaderImageView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderImageView(posterPath: "/xRyINp9KfMLVjRiO5nCsoRDdvvF.jpg")
    }
}

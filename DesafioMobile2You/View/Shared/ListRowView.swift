//
//  ListCellView.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 30/01/22.
//

import SwiftUI

struct ListRowView: View {
    var posterImage: Image
    
    init(urlImage: String) {
        self.posterImage = Image(uiImage: urlImage.loadUIImage())
    }
    
    var body: some View {
        HStack{
            //MARK: Movie Image
            posterImage
                .resizable()
                .frame(width: 50)
            //MARK: Title, Year, Genres
            VStack(alignment: .leading){
                Text("Edward Scissorhands")
                    .bold()
                HStack {
                    Text("1990")
                    Text("Drama, Fantasy")
                }
                .font(.subheadline)
            }
            .padding(.leading, 10)
            
            Spacer()
        }
        .frame(height: 80)
    }
}

struct ListCellView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(urlImage:  "https://image.tmdb.org/t/p/original/xRyINp9KfMLVjRiO5nCsoRDdvvF.jpg")
    }
}

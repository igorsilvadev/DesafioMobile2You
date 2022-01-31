//
//  CustomBackButton.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 31/01/22.
//

import SwiftUI

struct CustomBackButtonView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                        Image(systemName: "chevron.backward.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                            .background(Circle()
                                            .frame(width: 27, height: 27)
                                            .foregroundColor(.white))
                            .padding(.leading)
                           
                    }
                    
                Spacer()
            }
            Rectangle()
                .foregroundColor(.clear)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct CustomBackButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackButtonView()
    }
}

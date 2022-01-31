//
//  GradientView.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 30/01/22.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
            .opacity(0.95)
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}

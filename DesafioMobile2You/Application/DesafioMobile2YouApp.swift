//
//  DesafioMobile2YouApp.swift
//  DesafioMobile2You
//
//  Created by Igor Samoel da Silva on 29/01/22.
//

import SwiftUI

@main
struct DesafioMobile2YouApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MovieDetailsView(withId: 550)
                    .preferredColorScheme(.dark)
            }

        }
    }
}

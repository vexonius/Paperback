//
//  ContentView.swift
//  Paperback
//
//  Created by Tino Emer on 12.01.2021..
//

import SwiftUI
import Stinsen

struct ContentView: View {
    @EnvironmentObject var router: NavigationRouter<ContentCoordinator.Route>

    var body: some View {
        NavigationView {
            ZStack (alignment: .top) {
                Color.init(white: 0.97)
                    .ignoresSafeArea()
                CardProminent(subtitle: "BOOK OF THE DAY", title: "Dessert Spear", actionTitle: "Explore")
                    .onTapGesture {
                        router.route(to: .onboarding)
                    }
            }
            .navigationTitle("Hi, Tino")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

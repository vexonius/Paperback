//
//  ContentView.swift
//  Paperback
//
//  Created by Tino Emer on 12.01.2021..
//

import SwiftUI
import Stinsen

struct ContentView: View {
    @EnvironmentObject var router: DefaultCoordinator.Router

    var body: some View {
            ScrollView {
            VStack (alignment: .center, spacing: 2) {
                ForEach(0..<4) { i in
                    CardProminent(subtitle: "BOOK OF THE DAY",
                                  title: "Dessert Spear",
                                  actionTitle: "Explore")
                    .onTapGesture {
                        router.route(to: \.login)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

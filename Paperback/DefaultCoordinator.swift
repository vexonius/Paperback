//
//  ContentCoordinator.swift
//  ContentCoordinator
//
//  Created by Tino Emer on 03.08.2021..
//

import Foundation
import Stinsen
import SwiftUI

final class DefaultCoordinator: NavigationCoordinatable {

    let stack = NavigationStack(initial: \DefaultCoordinator.main)

    @Root var main = start
    @Route(.modal) var login = makeLoginCoordinator

    @ViewBuilder func start() -> some View {
        ContentView().navigationTitle("Daily Kidz Boop")
     }

    func makeLoginCoordinator() -> NavigationViewCoordinator<HomeCoordinator> {
           return NavigationViewCoordinator(HomeCoordinator())
       }

}

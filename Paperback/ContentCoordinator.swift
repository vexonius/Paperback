//
//  ContentCoordinator.swift
//  ContentCoordinator
//
//  Created by Tino Emer on 03.08.2021..
//

import Foundation
import Stinsen
import SwiftUI

class ContentCoordinator: NavigationCoordinatable {

    var navigationStack = NavigationStack()

    enum Route: NavigationRoute {
        case onboarding
    }

    func resolveRoute(route: Route) -> Transition {
        switch route {
        case .onboarding:
            return .modal(AnyCoordinatable(OnboardingCoordinator()))
        }
    }

    @ViewBuilder func start() -> some View {
        ContentView().navigationTitle("What is happening")
     }

}

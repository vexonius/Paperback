//
//  OnboardingCoordinator.swift
//  OnboardingCoordinator
//
//  Created by Tino Emer on 13.08.2021..
//

import Foundation
import SwiftUI

import Stinsen

class ContinueWirhAppleCoordinator: NavigationCoordinatable {
    var navigationStack: NavigationStack = NavigationStack()

    enum Route: NavigationRoute {
    }

    func resolveRoute(route: Route) -> Transition {
      
    }

    @ViewBuilder func start() -> some View {
        ContinueWithApple()
    }
}

//
//  OnboardingCoordinator.swift
//  OnboardingCoordinator
//
//  Created by Tino Emer on 03.08.2021..
//

import Foundation
import SwiftUI

import Stinsen

class OnboardingCoordinator: ViewCoordinatable {

    var children = ViewChild()

    enum Route: ViewRoute {
        case continueWithApple
    }

    func resolveRoute(route: Route) -> AnyCoordinatable {
        switch route {
        case .continueWithApple:
            return AnyCoordinatable(
                ContinueWirhAppleCoordinator()
                )
        }
    }

    @ViewBuilder func start() -> some View {
        LoginView().navigationTitle("Sign with Apple").navigationTitle("Login").navigationBarHidden(false)
    }

    init() {

    }
}

//
//  HomeCoordinator.swift
//  Paperback
//
//  Created by Tino Emer on 29.09.2021..
//

import Foundation
import SwiftUI
import Stinsen

final class HomeCoordinator: NavigationCoordinatable {
    let stack = NavigationStack(initial: \HomeCoordinator.dashboard)

    @Root var dashboard = makeLoginView
    //@Route(.push) var login = makeLoginView

    @ViewBuilder func makeDashboardView() -> some View {
        ContentView()
    }

    @ViewBuilder func makeLoginView() -> some View {
        LoginView()
    }
}

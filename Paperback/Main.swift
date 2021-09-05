//
//  Main.swift
//  Main
//
//  Created by Tino Emer on 13.08.2021..
//

import Foundation
import SwiftUI
import Stinsen

class PaperbackApp {

    var body: some Scene {
        WindowGroup {
            CoordinatorView(
                ContentCoordinator()
            )
        }
    }
}

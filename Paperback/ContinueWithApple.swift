//
//  ContinueWithApple.swift
//  ContinueWithApple
//
//  Created by Tino Emer on 03.08.2021..
//

import SwiftUI
import Stinsen

struct ContinueWithApple: View {
    @EnvironmentObject var router: NavigationRouter<ContinueWirhAppleCoordinator.Route>

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Continue with Apple")
                    .font(.headline)
                Spacer(minLength: 60)

                Button(">", action: {
                    self.router.dismiss()
                })
                    .font(.title)
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .buttonBorderShape(.capsule)
                    .foregroundColor(.mint)
                    .padding()
                    .frame(alignment: .trailing)

                Spacer(minLength: 60)
            }
        }
    }
}

struct ContinueWithApple_Previews: PreviewProvider {
    static var previews: some View {
       ContinueWithApple()
    }
}

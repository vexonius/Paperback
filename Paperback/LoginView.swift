//
//  Login.swift
//  Login
//
//  Created by Tino Emer on 29.07.2021..
//

import SwiftUI
import Stinsen

struct LoginView: View {
    @EnvironmentObject var router: HomeCoordinator.Router
    @State var showSecondScreen: Bool = false

    var body: some View {
        VStack (alignment: .center) {
            Spacer()
            Text("Welcome to Paperback")
                .font(.system(size: 40))
                .fontWeight(.black)
                .padding()
            Text("Browse, explore and track your favourite books with inovative and clean user interface. Join today millions of happy users.")
                .font(.body)
                .padding(.all, 40)
            Spacer()
            Spacer()
            Button(action: {}) {
                Text("Log In")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.green)
            .buttonBorderShape(.capsule)
            .padding()

            Button(action: {

            }) {
                Text("Continue with Apple")
                    .font(.title2)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .buttonBorderShape(.capsule)
            .padding([.leading, .bottom, .trailing], 20)

        }

    }
}

@available(iOS 15.0, *)
struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

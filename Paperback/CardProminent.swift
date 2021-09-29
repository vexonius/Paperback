//
//  CardProminent.swift
//  CardProminent
//
//  Created by Tino Emer on 10.08.2021..
//

import SwiftUI

struct CardProminent: View {
    @EnvironmentObject var router: DefaultCoordinator.Router

    var subtitle: String
    var title: String
    var actionTitle: String

    @ViewBuilder var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text(subtitle)
                .font(.system(size: 18))
                .bold()
                .foregroundColor(.init(white: 0.9))
                .frame(alignment: .leading)
                .padding([.top], 30)
                .padding([.leading], 20)
            Text(title)
                .font(.system(size: 28))
                .bold()
                .foregroundColor(.white)
                .frame(alignment: .leading)
                .padding([.top], 4)
                .padding([.leading], 20)
            HStack {
                Spacer()
                Image("cover-hyperion")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .mask({
                        RoundedRectangle(cornerRadius: 10)
                    })
                    .padding(30)
                Spacer()
            }
            Button(action: {
                
            }) {
                Spacer()
                Text(actionTitle)
                    .font(.title3)
                    .bold()
                    .foregroundColor(.blue)
                Spacer()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.white)
            .buttonBorderShape(.capsule)
            .padding([.leading, .trailing], 40)
            .padding([.bottom], 20)
        }
        .frame(maxWidth: .infinity, maxHeight: 400, alignment: .leading)
        .background {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .shadow(color: .blue, radius: 10, x: 0, y: 8)
        }
        .padding(20)
    }
}

func hello() async -> Int {
    return 2
}

struct CardProminent_Previews: PreviewProvider {
    static var previews: some View {
        CardProminent(subtitle: "BOOK OF THE DAY", title: "Dessert Spear", actionTitle: "Explore")
    }
}

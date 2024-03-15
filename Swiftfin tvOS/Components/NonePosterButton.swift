//
// Swiftfin is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2024 Jellyfin & Jellyfin Contributors
//

import SwiftUI

struct NonePosterButton: View {

    let type: PosterType

    var body: some View {
        Button {
            ZStack {
                ZStack {
                    Color(UIColor.darkGray)
                        .opacity(0.5)

                    VStack(spacing: 20) {
                        Image(systemName: "minus.circle")
                            .font(.title)
                            .foregroundColor(.secondary)

                        L10n.none.text
                            .font(.title3)
                            .foregroundColor(.secondary)
                    }
                }
                .posterStyle(type)
            }
        }
        .buttonStyle(.card)
    }
}

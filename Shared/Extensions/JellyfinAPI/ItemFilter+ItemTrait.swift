//
// Swiftfin is subject to the terms of the Mozilla Public
// License, v2.0. If a copy of the MPL was not distributed with this
// file, you can obtain one at https://mozilla.org/MPL/2.0/.
//
// Copyright (c) 2024 Jellyfin & Jellyfin Contributors
//

import Foundation
import JellyfinAPI

/// Aliased so the name `ItemFilter` can be repurposed.
///
/// - Important: Make sure to use the correct `filters` parameter for item calls!
typealias ItemTrait = JellyfinAPI.ItemFilter

extension ItemTrait: ItemFilter {

    var value: String {
        rawValue
    }

    init(from anyFilter: AnyItemFilter) {
        self.init(rawValue: anyFilter.value)!
    }
}

extension ItemTrait: Displayable {
    // TODO: Localize
    var displayTitle: String {
        switch self {
        case .isUnplayed:
            return "Unplayed"
        case .isPlayed:
            return "Played"
        case .isFavorite:
            return "Favorites"
        case .likes:
            return "Liked Items"
        default:
            return ""
        }
    }
}

extension ItemTrait: SupportedCaseIterable {

    static var supportedCases: [ItemTrait] {
        [
            .isUnplayed,
            .isPlayed,
            .isFavorite,
            .likes,
        ]
    }
}

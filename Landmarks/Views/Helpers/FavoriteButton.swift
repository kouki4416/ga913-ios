/*
 See the LICENSE.txt file for this sample’s licensing information.

 Abstract:
 A button that acts as a favorites indicator.
 */

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool

    var onChanged: (_: Bool) -> Void

    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }.onChange(of: isSet) {
            onChanged(isSet)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true), onChanged: { _ in })
}

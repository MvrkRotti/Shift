
import Foundation
import SwiftUI

struct ProgressBar: View {
    let progress: Double

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Capsule()
                    .fill(Color.gray.opacity(0.2))

                Capsule()
                    .fill(Color.green)
                    .frame(
                        width: geometry.size.width * progress
                    )
            }
        }
        .frame(height: 8)
    }
}

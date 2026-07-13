
import SwiftUI

enum Shadows {
    static let card = Shadow(color: .black.opacity(0.08), radius: 12, y: 6)
}

struct Shadow {
    let color: Color
    let radius: CGFloat
    let y: CGFloat
}


import SwiftUI

struct AppCard<Content: View>: View {
    private let content: Content
    private let backgroundColor: Color
    private let height: CGFloat?
    
    init(
        backgroundColor: Color = AppColors.cardBackground,
        @ViewBuilder content: () -> Content,
        height: CGFloat? = nil
    ) {
        self.backgroundColor = backgroundColor
        self.content = content()
        self.height = height
    }
    
    var body: some View {
        content
            .padding(20)
            .frame(maxWidth: .infinity)
            .frame(height: height)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: Radius.large))
            .shadow(color: .black.opacity(0.06), radius: 20, x: 0, y: 8)
    }
}

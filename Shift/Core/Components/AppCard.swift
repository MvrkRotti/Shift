
import SwiftUI

struct AppCard<Content: View>: View {
    private let content: Content
    private let backgroundColor: Color
    
    init(
        backgroundColor: Color = AppColors.cardBackground,
        @ViewBuilder content: () -> Content
    ) {
        self.backgroundColor = backgroundColor
        self.content = content()
    }
    
    var body: some View {
        content
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: Radius.large))
            .shadow(color: .black.opacity(0.06), radius: 20, x: 0, y: 8)
    }
}


import SwiftUI

struct TodaySavingsCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
        }
        .padding(24)
        .frame(maxWidth: .infinity)
        .background(background)
        .clipShape(
            RoundedRectangle(
                cornerRadius: Radius.large,
                style: .continuous
            )
        )
    }
}

private extension TodaySavingsCard {
    var background: some View {
        LinearGradient(
            colors: [
                AppColors.primaryGreen,
                AppColors.secondaryGreen
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}

#Preview {
    TodaySavingsCard()
}


import SwiftUI

struct QuoteCard: View {
    var body: some View {
        AppCard(backgroundColor: AppColors.cardBackground) {
            ZStack(alignment: .topLeading) {
                            Text("❝")
                                .foregroundStyle(AppColors.primaryGreen)
                                .font(.system(size: 20, weight: .bold))

                            Text("Каждый маленький выбор приближает тебя к большой цели")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .multilineTextAlignment(.center)
                        }
                        .frame(maxWidth: .infinity, minHeight: 120)
        }
        .shadow(color: .black, radius: 0.3)
    }
}

#Preview {
    QuoteCard()
}


import SwiftUI

struct AlcoholFreeStreakCard: View {

    var body: some View {

        AppCard(
            backgroundColor: AppColors.danger.opacity(0.15),
            height: 120
        ) {

            VStack(alignment: .leading, spacing: Spacing.xs) {

                Text("Серия без алкоголя")
                    .font(Typography.caption)
                    .foregroundStyle(AppColors.textSecondary)

                HStack(
                    alignment: .firstTextBaseline,
                    spacing: Spacing.xs
                ) {

                    Text("12")
                        .font(Typography.titleLarge)
                        .foregroundStyle(AppColors.textPrimary)

                    Text("дней")
                        .font(Typography.caption)
                        .foregroundStyle(AppColors.textSecondary)
                }
                Image(systemName: "flame.fill")
                    .font(.system(size: 25, weight: .semibold))
                    .foregroundStyle(AppColors.danger)
                Spacer(minLength: 0)
            }
        }
    }
}

#Preview {
    AlcoholFreeStreakCard()
}

import SwiftUI

struct HealthyActionsCard: View {

    var body: some View {

        AppCard(
            backgroundColor: AppColors.success.opacity(0.15),
            height: 120
        ) {

            VStack(alignment: .leading, spacing: Spacing.xs) {

                Text("Полезные действия")
                    .font(Typography.caption)
                    .foregroundStyle(AppColors.textSecondary)

                HStack(
                    alignment: .firstTextBaseline,
                    spacing: Spacing.xs
                ) {

                    Text("24")
                        .font(Typography.titleLarge)
                        .foregroundStyle(AppColors.textPrimary)

                    Text("за месяц")
                        .font(Typography.caption)
                        .foregroundStyle(AppColors.textSecondary)
                }

                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 25, weight: .semibold))
                    .foregroundStyle(AppColors.primaryGreen)

                Spacer(minLength: 0)
            }
        }
    }
}

#Preview {
    HealthyActionsCard()
}

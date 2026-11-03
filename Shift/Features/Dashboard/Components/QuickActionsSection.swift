import SwiftUI

struct QuickActionsSection: View {

    var onAction: (QuickAction) -> Void

    var body: some View {

        VStack(alignment: .leading, spacing: Spacing.m) {

            Text("Быстрые действия")
                .font(Typography.caption)
                .foregroundStyle(AppColors.textPrimary)

            HStack(alignment: .top, spacing: Spacing.s) {

                ForEach(QuickAction.allCases) { action in

                    QuickActionButton(action: action) {
                        onAction(action)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
        }
    }
}

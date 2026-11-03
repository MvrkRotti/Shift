
import SwiftUI

struct DashboardView: View {
    @State private var viewModel = DashboardViewModel()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: Spacing.l) {
                GreetingHeader()
                
                TodaySavingsCard()
                
                PersonalTargetCard(progress: 0.5)
                
                HStack(spacing: Spacing.s) {
                    AlcoholFreeStreakCard()
                        .frame(maxWidth: .infinity)
                    HealthyActionsCard()
                        .frame(maxWidth: .infinity)
                }
                
                QuoteCard()
                
                QuickActionsSection { action in

                    switch action {

                    case .harmfulHabit:
                        print("Добавить вредную привычку")

                    case .refusedHabit:
                        print("Отказался от привычки")

                    case .healthyAction:
                        print("Добавить полезное действие")

                    case .savedMoney:
                        print("Сэкономил деньги")

                    case .dailyNote:
                        print("Создать заметку")
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            .padding(.bottom, 120)
        }
        .background(AppColors.background)
    }
}

#Preview {
    DashboardView()
}

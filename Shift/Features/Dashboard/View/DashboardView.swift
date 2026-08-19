
import SwiftUI

struct DashboardView: View {
    @State private var viewModel = DashboardViewModel()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 24) {
                GreetingHeader()
                
                TodaySavingsCard()
                
                PersonalTargetCard(progress: 0.2)
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

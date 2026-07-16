
import SwiftUI

struct DashboardView: View {
    @State private var viewModel = DashboardViewModel()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 24) {
                Text("Header")
                
                AppCard {
                    Text("Today Savings")
                }
                
                AppCard {
                    Text("Goal")
                }
                
                AppCard {
                    Text("Statistics")
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

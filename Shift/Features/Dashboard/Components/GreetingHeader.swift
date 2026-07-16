
import SwiftUI

struct GreetingHeader: View {
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Добрый вечер,")
                    .font(Typography.body)
                    .foregroundStyle(AppColors.textSecondary)
                
                HStack(spacing: 8) {
                    Text("Александр")
                        .font(Typography.displayLarge)
                        .foregroundStyle(AppColors.textPrimary)
                    
                    Text("👋")
                        .font(.system(size: 34))
                }
            }
            
            Spacer()
            
            NotificationButton()
        }
    }
}

#Preview {
    GreetingHeader()
}

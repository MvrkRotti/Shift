
import SwiftUI

struct NotificationButton: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button {
                
            } label: {
                Image(systemName: "bell")
                    .font(.system(size: 26))
                    .foregroundStyle(AppColors.textPrimary)
            }
            
            Circle()
                .fill(Color.red)
                .frame(width: 10, height: 10)
        }
    }
}

#Preview {
    NotificationButton()
}

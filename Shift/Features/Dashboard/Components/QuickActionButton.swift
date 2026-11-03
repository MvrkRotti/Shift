import SwiftUI

struct QuickActionButton: View {
    
    let action: QuickAction
    let onTap: () -> Void
    
    var body: some View {
        
        Button(action: onTap) {
            
            VStack(spacing: Spacing.s) {
                
                Image(systemName: action.symbol)
                    .font(Typography.title)
                    .foregroundStyle(action.tint)
                    .frame(width: 42, height: 42)
                    .background(action.backgroundColor)
                    .clipShape(Circle())
                
                Text(action.title)
                    .font(Typography.quickActionTitle)
                    .foregroundStyle(AppColors.textPrimary)
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(maxWidth: .infinity)
            }
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
    }
}

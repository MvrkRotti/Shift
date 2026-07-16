
import SwiftUI

struct TodaySavingsCard: View {
    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 20) {
                header
                
                amount
            
            }
            .frame(width: 200)
            
            VStack (alignment: .trailing){
                chartPlaceholder
                
            }
        }
        .padding(24)
        .frame(maxWidth: .infinity)
        .background(background)
        .clipShape(
            RoundedRectangle(
                cornerRadius: Radius.large,
                style: .continuous
            )
        )
    }
}

//MARK: background gradient layer
private extension TodaySavingsCard {
    var background: some View {
        LinearGradient(
            colors: [
                AppColors.primaryGreen,
                AppColors.secondaryGreen
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}

//MARK: header layer
private extension TodaySavingsCard {
    var header: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Сегодня вы сэкономили")
                    .font(Typography.body)
                    .foregroundStyle(.white.opacity(0.9))
                
                Text("на вредных привычках")
                    .font(Typography.body)
                    .foregroundStyle(.white.opacity(0.9))
            }
        }
        
    }
}

//MARK: Amount layer
private extension TodaySavingsCard {
    var amount: some View {
        HStack(alignment: .firstTextBaseline, spacing: 4) {
            Text("1 250")
                .font(Typography.displayLarge)
                .foregroundStyle(.white)
            
            Text("p")
                .font(Typography.title)
                .foregroundStyle(.white.opacity(0.9))
        }
    }
}

//MARK: Chart layer
private extension TodaySavingsCard {
    var chartPlaceholder: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(.white.opacity(0.18))
            .frame(height: 90)
            .overlay {
                Image(systemName: "chart.line.uptrend.xyaxis")
                    .font(.largeTitle)
                    .foregroundStyle(.white.opacity(0.8))
            }
    }
}

#Preview {
    TodaySavingsCard()
}

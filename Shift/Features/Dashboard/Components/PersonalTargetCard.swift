

import SwiftUI

struct PersonalTargetCard: View {
    let progress: Double
    
    var body: some View {
        HStack(spacing: 20) {
            
            targetImage
            
            targetDetails
//            VStack(alignment: .leading, spacing: 10) {
//                targetDetails
//
//            }
        }
        .padding(24)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(AppColors.cardBackground)
        .clipShape(
            RoundedRectangle(
                cornerRadius: Radius.large,
                style: .continuous
            )
        )
        .shadow(color: .black, radius: 0.3)
    }
}

//MARK: target image
private extension PersonalTargetCard {
    var targetImage: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("vacationImage")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            
            ZStack {
                Circle()
                    .stroke(
                        Color.gray.opacity(0.2),
                        lineWidth: 4
                    )
                
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(
                        AppColors.success,
                        style: StrokeStyle(
                            lineWidth: 5,
                            lineCap: .round
                        )
                    )
                    .rotationEffect(.degrees(-90))
                
                Text("\(Int(progress * 100))%")
                    .font(Typography.percent)
                    .foregroundStyle(AppColors.success)
            }
            .frame(width: 42, height: 42)
            .background(AppColors.cardBackground)
            .clipShape(Circle())
            .offset(x: 12, y: 12)
        }
    }
}

private extension PersonalTargetCard {
    var targetDetails: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Цель")
                .font(Typography.caption)
                .foregroundStyle(.gray)
            
            Text("Поездка в отпуск") // personal target name
                .font(Typography.headline)
            
            Text("50 000") // saved amount
                .font(Typography.title)
            
            Text("из 100 000") // total amount
                .font(Typography.caption)
                .foregroundStyle(.black.opacity(0.7))
            
            ProgressBar(progress: 0.5)
            
            Text("Осталось 44 дня") // remaining days
                .font(Typography.caption)
                .foregroundStyle(.black.opacity(0.6))
        }
    }
}

#Preview {
    PersonalTargetCard(progress: 0.2)
}

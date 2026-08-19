

import SwiftUI

struct PersonalTargetCard: View {
    let progress: Double
    
    var body: some View {
        HStack(spacing: 20) {
            
            targetImage
            
            VStack(alignment: .trailing, spacing: 20) {
                
            }
            .frame(width: 200)
        }
        .padding(24)
        .frame(maxWidth: .infinity)
        .background(Color.white)
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
                        Color.green,
                        style: StrokeStyle(
                            lineWidth: 5,
                            lineCap: .round
                        )
                    )
                    .rotationEffect(.degrees(-90))
                
                Text("\(Int(progress * 100)) %")
                    .font(.system(size: 10, weight: .semibold))
                    .foregroundStyle(.green)
            }
            .frame(width: 42, height: 42)
            .background(Color.white)
            .clipShape(Circle())
            .offset(x: 12, y: 12)
        }
    }
}

#Preview {
    PersonalTargetCard(progress: 0.2)
}

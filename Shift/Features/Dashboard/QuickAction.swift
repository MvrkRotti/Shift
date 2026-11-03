
import SwiftUI

enum QuickAction: String, CaseIterable, Identifiable {
    case harmfulHabit
    case refusedHabit
    case healthyAction
    case savedMoney
    case dailyNote
    
    var id: String { rawValue }
    
    var title: String {
        switch self {
        case .harmfulHabit:
            return "Вредная\nпривычка"
        case .refusedHabit:
            return "Отказался\nот привычки"
        case .healthyAction:
            return "Полезное\nдействие"
        case .savedMoney:
            return "Сэкономил\nденьги"
        case .dailyNote:
            return "Заметка\nдня"
        }
    }
    
    var symbol: String {
        switch self {
        case .harmfulHabit:
            return "wineglass.fill"
        case .refusedHabit:
            return "nosign"
        case .healthyAction:
            return "figure.run"
        case .savedMoney:
            return "wallet.pass.fill"
        case .dailyNote:
            return "note.text"
        }
    }
    
    var tint: Color {
        switch self {
        case .harmfulHabit:
            return AppColors.harmfulHabit
        case .refusedHabit:
            return AppColors.refusedHabit
        case .healthyAction:
            return AppColors.healthyAction
        case .savedMoney:
            return AppColors.savedMoney
        case .dailyNote:
            return AppColors.dailyNote
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .harmfulHabit:
            return AppColors.harmfulHabit.opacity(0.15)
        case .refusedHabit:
            return AppColors.refusedHabit.opacity(0.15)
        case .healthyAction:
            return AppColors.healthyAction.opacity(0.15)
        case .savedMoney:
            return AppColors.savedMoney.opacity(0.15)
        case .dailyNote:
            return AppColors.dailyNote.opacity(0.15)
        }
    }
}

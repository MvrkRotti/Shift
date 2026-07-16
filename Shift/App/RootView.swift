
import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Label("Главная", systemImage: "house.fill")
                }
            
            CalendarView()
                .tabItem {
                    Label("Календарь", systemImage: "calendar")
                }
            
            Color.clear
                .tabItem {
                    Label("Добавить", systemImage: "plus")
                }
            StatisticsView()
                .tabItem {
                    Label("Статистика", systemImage: "chart.bar")
                }
            
            ProfileView()
                .tabItem {
                    Label("Профиль", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    RootView()
}

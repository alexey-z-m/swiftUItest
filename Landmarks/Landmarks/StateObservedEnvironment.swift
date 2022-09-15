import SwiftUI

class GameSettings: ObservableObject {
    @Published var score = 1
}

struct ScoreView: View {
    @EnvironmentObject var settings: GameSettings
    
    var body: some View {
        Text("Score: \(settings.score)")
    }
}

struct StateObservedEnvironment: View {
    @StateObject var settings = GameSettings()
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Increase Score") {
                    settings.score += 1
                }
                
                NavigationLink(destination: ScoreView()) {
                    Text("Show Detail View")
                }
            }
            .frame(height: 200)
        }
        .environmentObject(settings)
    }
}

struct StateObservedEnvironment_Previews: PreviewProvider {
    static var previews: some View {
        StateObservedEnvironment()
    }
}

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var viewModel: FruitViewModel
    @State private var showSplash: Bool = true

    var body: some View {
        ZStack {
            if showSplash {

                SplashView(isActive: $showSplash)
                    .transition(.opacity)
                    .zIndex(2)

            } else if !viewModel.isOnboardingCompleted {

                OnboardingView()
                    .transition(.opacity)
                    .zIndex(1)

            } else {

                FruitListView()
                    .transition(.opacity)
                    .zIndex(0)
            }
        }
        .animation(.easeInOut(duration: 0.45), value: showSplash)
        .animation(.easeInOut(duration: 0.45), value: viewModel.isOnboardingCompleted)
    }
}

#Preview {
    ContentView()
        .environmentObject(FruitViewModel())
}

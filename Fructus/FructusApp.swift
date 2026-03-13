import SwiftUI

@main
struct FructusApp: App {

    @StateObject private var viewModel = FruitViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}

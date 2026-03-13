import SwiftUI

class FruitViewModel: ObservableObject {




    @Published var fruits: [Fruit] = fruitsData


    @Published var isOnboardingCompleted: Bool {
        didSet {
            UserDefaults.standard.set(isOnboardingCompleted, forKey: "isOnboardingCompleted")
        }
    }


    init() {
        self.isOnboardingCompleted = UserDefaults.standard.bool(forKey: "isOnboardingCompleted")
    }
}

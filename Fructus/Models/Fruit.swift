import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let name: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let nutrition: [NutritionItem]
}

struct NutritionItem: Identifiable {
    let id = UUID()
    let label: String
    let value: String
}

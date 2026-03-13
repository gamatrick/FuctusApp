import SwiftUI

// MARK: - Color Extension
/// Extension pour les couleurs personnalisées de l'application
/// Ces couleurs sont définies dans Assets.xcassets/Colors
extension Color {
    // Blueberry
    static let colorBlueberryLight = Color("ColorBlueberryLight")
    static let colorBlueberryDark = Color("ColorBlueberryDark")
    
    // Grapefruit
    static let colorGrapefruitLight = Color("ColorGrapefruitLight")
    static let colorGrapefruitDark = Color("ColorGrapefruitDark")
    
    // Strawberry
    static let colorStrawberryLight = Color("ColorStrawberryLight")
    static let colorStrawberryDark = Color("ColorStrawberryDark")
    
    // Apple
    static let colorAppleLight = Color("ColorAppleLight")
    static let colorAppleDark = Color("ColorAppleDark")
    
    // Lime
    static let colorLimeLight = Color("ColorLimeLight")
    static let colorLimeDark = Color("ColorLimeDark")
    
    // Pear
    static let colorPearLight = Color("ColorPearLight")
    static let colorPearDark = Color("ColorPearDark")
    
    // Plum
    static let colorPlumLight = Color("ColorPlumLight")
    static let colorPlumDark = Color("ColorPlumDark")
    
    // Watermelon
    static let colorWatermelonLight = Color("ColorWatermelonLight")
    static let colorWatermelonDark = Color("ColorWatermelonDark")
    
    // Lemon
    static let colorLemonLight = Color("ColorLemonLight")
    static let colorLemonDark = Color("ColorLemonDark")
    
    // Cherry
    static let colorCherryLight = Color("ColorCherryLight")
    static let colorCherryDark = Color("ColorCherryDark")
}

// MARK: - Fallback Colors (si Assets non disponibles)
/// Couleurs de fallback utilisées si les Color Assets ne sont pas configurés dans Xcode
struct FruitColors {
    static let blueberry: [Color] = [Color(red: 0.47, green: 0.68, blue: 1.0), Color(red: 0.28, green: 0.44, blue: 0.87)]
    static let grapefruit: [Color] = [Color(red: 1.0, green: 0.73, blue: 0.36), Color(red: 1.0, green: 0.45, blue: 0.18)]
    static let strawberry: [Color] = [Color(red: 1.0, green: 0.45, blue: 0.55), Color(red: 0.85, green: 0.18, blue: 0.35)]
    static let apple: [Color] = [Color(red: 1.0, green: 0.45, blue: 0.45), Color(red: 0.85, green: 0.18, blue: 0.35)]
    static let lime: [Color] = [Color(red: 0.55, green: 0.85, blue: 0.30), Color(red: 0.20, green: 0.65, blue: 0.10)]
    static let pear: [Color] = [Color(red: 0.80, green: 0.85, blue: 0.20), Color(red: 0.55, green: 0.70, blue: 0.10)]
    static let plum: [Color] = [Color(red: 0.65, green: 0.20, blue: 0.75), Color(red: 0.40, green: 0.10, blue: 0.55)]
    static let watermelon: [Color] = [Color(red: 0.55, green: 0.85, blue: 0.35), Color(red: 0.90, green: 0.20, blue: 0.30)]
    static let lemon: [Color] = [Color(red: 1.0, green: 0.90, blue: 0.30), Color(red: 0.85, green: 0.70, blue: 0.10)]
    static let cherry: [Color] = [Color(red: 0.90, green: 0.20, blue: 0.30), Color(red: 0.65, green: 0.05, blue: 0.15)]
}

import SwiftUI

struct FruitDetailView: View {


    let fruit: Fruit


    var accentColor: Color {
        fruit.gradientColors.first ?? .orange
    }


    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {


                ZStack {
                    LinearGradient(
                        gradient: Gradient(colors: fruit.gradientColors),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .frame(height: 300)

                    Image(fruit.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                        .shadow(radius: 10)
                }


                VStack(alignment: .leading, spacing: 16) {


                    Text(fruit.name)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(accentColor)


                    Text(fruit.headline)
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .fixedSize(horizontal: false, vertical: true)


                    NutritionView(fruit: fruit)


                    Text("LEARN MORE ABOUT \(fruit.name.uppercased())")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(accentColor)


                    Text(fruit.description)
                        .font(.body)
                        .foregroundColor(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .padding(.bottom, 40)
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationTitle(fruit.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        FruitDetailView(fruit: fruitsData[1])
    }
}

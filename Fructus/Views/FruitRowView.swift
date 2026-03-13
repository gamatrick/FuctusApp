import SwiftUI

struct FruitRowView: View {

    let fruit: Fruit

    var body: some View {
        HStack(spacing: 12) {

            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: fruit.gradientColors),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .frame(width: 60, height: 60)
                .cornerRadius(12)

                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 52, height: 52)
            }


            VStack(alignment: .leading, spacing: 4) {
                Text(fruit.name)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)

                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
            }

            Spacer()
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
        .padding()
}

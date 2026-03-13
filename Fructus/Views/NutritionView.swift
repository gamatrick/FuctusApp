import SwiftUI

struct NutritionView: View {

    let fruit: Fruit
    @State private var isExpanded: Bool = false

    var accentColor: Color {
        fruit.gradientColors.first ?? .orange
    }

    var body: some View {
        VStack(spacing: 0) {

            Button(action: {
                withAnimation(.easeInOut) {
                    isExpanded.toggle()
                }
            }) {
                HStack {
                    Text("Nutritional value per 100g")
                        .font(.subheadline)
                        .foregroundColor(.primary)

                    Spacer()

                    Image(systemName: isExpanded ? "chevron.down" : "chevron.right")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 14)
                .background(Color(.systemGray6))
                .cornerRadius(10)
            }


            if isExpanded {
                VStack(spacing: 0) {
                    ForEach(fruit.nutrition) { item in
                        HStack {
                            Image(systemName: "info.circle.fill")
                                .foregroundColor(accentColor)
                                .font(.caption)

                            Text(item.label)
                                .font(.subheadline)
                                .foregroundColor(accentColor)
                                .frame(width: 80, alignment: .leading)

                            Spacer()

                            Text(item.value)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .multilineTextAlignment(.trailing)
                        }
                        .padding(.horizontal, 16)
                        .padding(.vertical, 10)

                        Divider()
                            .padding(.leading, 16)
                    }
                }
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
    }
}

#Preview {
    NutritionView(fruit: fruitsData[1])
        .padding()
}

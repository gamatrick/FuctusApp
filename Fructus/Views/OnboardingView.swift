import SwiftUI

struct OnboardingCardView: View {
    let fruit: Fruit

    var body: some View {
        ZStack {

            LinearGradient(
                gradient: Gradient(colors: fruit.gradientColors),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 0) {


                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 340, maxHeight: 340)
                    .padding(.top, 80)
                    .shadow(color: .black.opacity(0.12), radius: 10, x: 0, y: 6)

                Spacer()


                Text(fruit.name)
                    .font(.system(size: 36, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 12)


                Text(fruit.headline)
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(.white.opacity(0.88))
                    .multilineTextAlignment(.center)
                    .lineSpacing(4)
                    .padding(.horizontal, 40)

                Spacer().frame(height: 120)
            }
        }
    }
}

struct OnboardingView: View {

    @EnvironmentObject var viewModel: FruitViewModel
    @State private var currentIndex: Int = 0

    var body: some View {
        ZStack(alignment: .bottom) {


            TabView(selection: $currentIndex) {
                ForEach(Array(viewModel.fruits.enumerated()), id: \.offset) { index, fruit in
                    OnboardingCardView(fruit: fruit)
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea()


            VStack(spacing: 16) {


                Button(action: {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        viewModel.isOnboardingCompleted = true
                    }
                }) {
                    HStack(spacing: 10) {
                        Text("Start")
                            .font(.system(size: 17, weight: .semibold))
                            .foregroundColor(.white)
                        Image(systemName: "arrow.right.circle")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 32)
                    .padding(.vertical, 14)
                    .overlay(
                        Capsule()
                            .stroke(Color.white.opacity(0.80), lineWidth: 1.5)
                    )
                }


                HStack(spacing: 8) {
                    ForEach(0..<viewModel.fruits.count, id: \.self) { index in
                        Capsule()
                            .fill(index == currentIndex
                                  ? Color.white
                                  : Color.white.opacity(0.35))
                            .frame(width: index == currentIndex ? 20 : 8, height: 8)
                            .animation(.spring(response: 0.3), value: currentIndex)
                    }
                }
            }
            .padding(.bottom, 52)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingView()
        .environmentObject(FruitViewModel())
}

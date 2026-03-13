import SwiftUI

struct FruitListView: View {


    @EnvironmentObject var viewModel: FruitViewModel
    @State private var showSettings: Bool = false


    var body: some View {
        NavigationView {
            List(viewModel.fruits) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                }
            }
            .navigationTitle("Fruits")
            .toolbar {

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                            .font(.headline)
                    }
                }
            }
            .sheet(isPresented: $showSettings) {
                SettingsView()
                    .environmentObject(viewModel)
            }
        }
    }
}

#Preview {
    FruitListView()
        .environmentObject(FruitViewModel())
}

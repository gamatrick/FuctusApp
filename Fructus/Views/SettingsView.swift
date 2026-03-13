import SwiftUI

struct SettingsView: View {


    @EnvironmentObject var viewModel: FruitViewModel
    @Environment(\.dismiss) var dismiss
    @State private var isRestarting: Bool = false


    var body: some View {
        NavigationView {
            List {


                Section(header: settingsSectionHeader(title: "FRUCTUS", icon: "info.circle")) {
                    HStack(alignment: .top, spacing: 12) {

                        Image(systemName: "leaf.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.green)
                            .padding(4)
                            .background(Color(.systemGray6))
                            .cornerRadius(12)


                        Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical, 8)
                }


                Section(header: settingsSectionHeader(title: "CUSTOMIZATION", icon: "paintbrush")) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                            .padding(.top, 4)

                        Toggle(isOn: $isRestarting) {
                            Text("RESTART")
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(.secondary)
                        }
                        .onChange(of: isRestarting) { _, newValue in
                            if newValue {

                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    viewModel.isOnboardingCompleted = false
                                    dismiss()
                                }
                            }
                        }
                    }
                    .padding(.vertical, 4)
                }


                Section(header: settingsSectionHeader(title: "APPLICATION", icon: "apps.iphone")) {
                    settingsRow(label: "Developer", value: "John / Jane")
                    settingsRow(label: "Designer", value: "Robert Petras")
                    settingsRow(label: "Compatibility", value: "iOS 14")


                    HStack {
                        Text("Website")
                            .foregroundColor(.primary)

                        Spacer()

                        Link(destination: URL(string: "https://swiftuimasterclass.com")!) {
                            HStack(spacing: 4) {
                                Text("SwiftUI Masterclass")
                                    .foregroundColor(.orange)
                                Image(systemName: "arrow.up.right.square")
                                    .foregroundColor(.orange)
                            }
                            .font(.subheadline)
                        }
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarItems(
                trailing: Button(action: { dismiss() }) {
                    Image(systemName: "xmark")
                        .font(.headline)
                        .foregroundColor(.primary)
                }
            )
        }
    }




    private func settingsSectionHeader(title: String, icon: String) -> some View {
        HStack {
            Text(title)
            Spacer()
            Image(systemName: icon)
        }
    }


    private func settingsRow(label: String, value: String) -> some View {
        HStack {
            Text(label)
                .foregroundColor(.primary)
            Spacer()
            Text(value)
                .foregroundColor(.secondary)
                .font(.subheadline)
        }
    }
}

#Preview {
    SettingsView()
        .environmentObject(FruitViewModel())
}

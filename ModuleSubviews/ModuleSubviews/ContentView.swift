import SwiftUI
import TheParentView
import Strings

struct ContentView: View {
    var body: some View {
        TheParentView(titleKey: L.first)
    }
}

#Preview {
    ContentView()
}

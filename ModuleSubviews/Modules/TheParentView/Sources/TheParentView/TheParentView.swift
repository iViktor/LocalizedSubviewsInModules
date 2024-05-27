import Strings
import SwiftUI
import TheChildView

public struct TheParentView: View {
    
    let titleKey: LocalizedStringKey
    
    public init(titleKey: LocalizedStringKey) {
        self.titleKey = titleKey
    }

    public var body: some View {
        VStack () {
            Button(action: {
                
            }, label: {
                Label(
                    title: { Text(titleKey, tableName: L.stringsCatalog) },
                    icon: { }
                )
            })
            
            TheChildView(titleKey: L.second)
        }
    }
}

#Preview {
    TheParentView(titleKey: L.first)
}

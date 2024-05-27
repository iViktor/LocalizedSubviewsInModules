import Strings
import SwiftUI

public struct TheChildView: View {
    
    let titleKey: LocalizedStringKey
    
    public init(titleKey: LocalizedStringKey) {
        self.titleKey = titleKey
    }

    public var body: some View {
        Button(action: {
            
        }, label: {
            Label(
                title: { Text(titleKey, tableName: L.stringsCatalog) },
                icon: { }
            )
        })
    }
}

#Preview {
    TheChildView(titleKey: L.second)
}

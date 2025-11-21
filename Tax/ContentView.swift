import SwiftUI

struct ContentView: View {
    @Environment(TaxState.self) var taxState
    
    var body: some View {
        VStack {
            TaxForm()
            TaxCalculations()
        }
        .padding(20)
        .padding(.top, 10)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    ContentView()
        .environment(TaxState())
}

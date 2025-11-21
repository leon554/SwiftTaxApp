import SwiftUI


struct TaxCalculations: View {
    @Environment(TaxState.self) var taxState
    
    var body: some View {
        VStack{
            ForEach(taxState.taxCalculations){ calculation in
                Calculation(calculation: calculation)
                
            }
        }
    }
}

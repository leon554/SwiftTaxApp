import SwiftUI

struct Calculation: View{
    var calculation: TaxCalculation
    
    @Environment(TaxState.self) var taxState
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Pre Tax: $\(calculation.preTaxAmt, specifier: "%.2f")")
            Text("Tax Rate: \(calculation.taxRate * 100, specifier: "%.2f")%")
            Text("Tax Paid: $\(calculation.preTaxAmt - calculation.postTaxAmt, specifier: "%.2f")")
            Text("Post Tax: $\(calculation.postTaxAmt, specifier: "%.2f")")
            
            Button("Delete") {
                taxState.taxCalculations = taxState.taxCalculations.filter {calc in calc.id != calculation.id}
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
    }
}

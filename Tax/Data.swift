import SwiftUI
import Observation

struct TaxCalculation: Identifiable {
    let id = UUID()
    var preTaxAmt: Double
    var taxRate: Double
    var postTaxAmt: Double
    
    init(_ preTaxAmt: Double, _ taxRate: Double) {
        self.preTaxAmt = preTaxAmt.rounded()
        self.postTaxAmt = (preTaxAmt - (preTaxAmt * taxRate)).rounded()
        self.taxRate = taxRate
    }
}

@Observable
class TaxState{
    var taxCalculations: [TaxCalculation] = []
}

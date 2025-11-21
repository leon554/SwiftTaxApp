import SwiftUI
import Observation

struct TaxCalculation {
    var preTaxAmt: Double
    var taxRate: Double
    var postTaxAmt: Double
    
    init(_ preTaxAmt: Double, _ taxRate: Double) {
        self.preTaxAmt = preTaxAmt
        self.taxRate = taxRate
        self.postTaxAmt = preTaxAmt - (preTaxAmt * taxRate)
    }
}

@Observable
class TaxState {
    var taxCalculations: [TaxCalculation] = []
}

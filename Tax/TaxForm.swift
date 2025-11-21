
import SwiftUI

struct TaxForm: View {
    @State var preTaxAmt: String = ""
    @State var taxRate: String = ""
    
    @State private var showAlert = false
    
    @Environment(TaxState.self) var taxState
    
    
    var body: some View {
            HStack{
                TextField("Pre Tax Amount", text: $preTaxAmt)
                    .padding(6)
                    .padding(.leading, 6)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                    .layoutPriority(1)
                    .frame(maxWidth: .infinity)
                    .keyboardType(.decimalPad)
                
                TextField("Tax Rate", text: $taxRate)
                    .padding(6)
                    .padding(.leading, 6)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                    .frame(width: 90)
                    .keyboardType(.decimalPad)
                
                Button("Add") {
                    if let preTaxAmtD = Double(preTaxAmt),
                       let taxRateD = Double(taxRate){
                        
                        taxState.taxCalculations += [
                            TaxCalculation(preTaxAmtD, taxRateD)
                        ]
                    }else{
                        showAlert = true
                        preTaxAmt = ""
                        taxRate = ""
                    }
                }
                .padding(6)
                .padding(.horizontal, 10)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
                .foregroundColor(Color.white)
                
            }
            .alert("Invalid Input", isPresented: $showAlert) {
                Button("OK", role: .cancel) { }
            } message: {
                Text("This input only accepts numbers!")
            }
    }
}



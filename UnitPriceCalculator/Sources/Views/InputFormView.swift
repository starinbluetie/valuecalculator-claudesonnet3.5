import SwiftUI

struct InputFormView: View {
    @State private var productName: String = ""
    @State private var productPrice: String = ""
    @State private var productQuantity: String = ""
    @State private var unitType: String = ""

    var body: some View {
        Form {
            Section(header: Text("Product Details")) {
                TextField("Product Name", text: $productName)
                TextField("Price", text: $productPrice)
                    .keyboardType(.decimalPad)
                TextField("Quantity", text: $productQuantity)
                    .keyboardType(.decimalPad)
                TextField("Unit Type", text: $unitType)
            }
            Button(action: {
                // Action to handle the input
            }) {
                Text("Add Product")
            }
        }
        .navigationTitle("Input Form")
    }
}

struct InputFormView_Previews: PreviewProvider {
    static var previews: some View {
        InputFormView()
    }
}
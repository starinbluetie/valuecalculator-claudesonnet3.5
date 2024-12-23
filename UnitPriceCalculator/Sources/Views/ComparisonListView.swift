import SwiftUI

struct ComparisonListView: View {
    var products: [Product]
    
    var body: some View {
        List(products.sorted(by: { $0.unitPrice < $1.unitPrice })) { product in
            HStack {
                Text(product.name)
                Spacer()
                Text("\(product.unitPrice, specifier: "%.2f") per \(product.unitType)")
            }
        }
        .navigationTitle("Comparison List")
    }
}

struct ComparisonListView_Previews: PreviewProvider {
    static var previews: some View {
        ComparisonListView(products: [
            Product(name: "Product A", price: 10.0, quantity: 2, unitType: "kg"),
            Product(name: "Product B", price: 15.0, quantity: 3, unitType: "kg")
        ])
    }
}
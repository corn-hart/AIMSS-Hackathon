import UIKit
import SwiftUI

// 1.
struct ImagePicker: UIViewControllerRepresentable {

    // 2.
    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()
    }
    
    // 3.
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        
    }
}

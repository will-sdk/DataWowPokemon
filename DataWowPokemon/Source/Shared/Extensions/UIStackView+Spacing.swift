
import UIKit

extension UIStackView {

    func addSpacing(_ spacing: CGFloat) {
        let spacingView = UIView()

        switch axis {
        case .horizontal:
            NSLayoutConstraint.activate([spacingView.widthAnchor.constraint(equalToConstant: spacing)])
        case .vertical:
            NSLayoutConstraint.activate([spacingView.heightAnchor.constraint(equalToConstant: spacing)])
        default:
            return
        }

        addArrangedSubview(spacingView)
    }
}

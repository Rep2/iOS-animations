import UIKit
import SnapKit

class RotateAnimationView: BasicLayerAnimationsView {
    override init(frame: CGRect) {
        super.init(frame: frame)

        titleLabel.text = "Rotate"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func startAnimation() {
        UIView.animate(withDuration: 3, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.logoImageView.transform = CGAffineTransform(rotationAngle: CGFloat(Float.pi))
        })
    }
}

import UIKit
import SnapKit

class CombinedSimpleAnimationsView: BasicLayerAnimationsView {
    override init(frame: CGRect) {
        super.init(frame: frame)

        titleLabel.text = "Combined"

        logoImageView.snp.updateConstraints { make in
            make.left.equalTo(self.snp.left).offset(0)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func startAnimation() {
        UIView.animate(withDuration: 3, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.logoImageView.alpha = 0
            self.logoImageView.transform = CGAffineTransform(rotationAngle: CGFloat(Float.pi))
            self.logoImageView.transform = CGAffineTransform(scaleX: 0, y: 0.5)

            self.logoImageView.snp.updateConstraints { make in
                make.left.equalTo(self.snp.left).offset(self.bounds.width - self.logoImageView.bounds.width)
            }

            self.layoutIfNeeded()
        })
    }
}

import UIKit
import SnapKit

class FadeAnimationView: BasicLayerAnimationsView {
    override init(frame: CGRect) {
        super.init(frame: frame)

        titleLabel.text = "Fade"

        logoImageView.snp.updateConstraints { make in
            make.left.equalTo(self.snp.left).offset(self.bounds.width/2 - self.logoImageView.bounds.width/2)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func startAnimation() {
        UIView.animate(withDuration: 3, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.logoImageView.alpha = 0
        })
    }
}

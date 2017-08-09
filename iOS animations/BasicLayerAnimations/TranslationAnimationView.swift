import UIKit
import SnapKit

class TranslationAnimationView: BasicLayerAnimationsView {
    override init(frame: CGRect) {
        super.init(frame: frame)

        titleLabel.text = "Translation"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func startAnimation() {
        UIView.animate(withDuration: 3, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.logoImageView.snp.updateConstraints { make in
                make.left.equalTo(self.snp.left).offset(self.bounds.width - self.logoImageView.bounds.width)
            }

            self.layoutIfNeeded()
        })
    }
}

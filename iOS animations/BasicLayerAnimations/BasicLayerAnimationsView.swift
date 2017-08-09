import UIKit
import SnapKit

class BasicLayerAnimationsView: UIView {
    lazy var titleLabel: UILabel = {
        return UILabel(frame: CGRect.zero)
    }()

    lazy var logoImageView: UIImageView = {
        return UIImageView(image: #imageLiteral(resourceName: "AppleLogo"))
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(titleLabel)
        addSubview(logoImageView)

        titleLabel.snp.makeConstraints { make in
            make.top.left.right.equalTo(self).offset(16)
        }

        logoImageView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(16)
            make.left.equalTo(self.snp.left).offset(self.bounds.width/2 - self.logoImageView.bounds.width/2)
            make.size.equalTo(CGSize(width: 100, height: 100))
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

import UIKit
import SnapKit

class BasicLayerAnimationsViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: CGRect.zero)
        scrollView.backgroundColor = .white

        return scrollView
    }()

    lazy var transitionAnimationView: TranslationAnimationView = {
        return TranslationAnimationView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 200))
    }()

    lazy var fadeAnimationView: FadeAnimationView = {
        return FadeAnimationView(frame: CGRect(x: 0, y: 200, width: self.view.bounds.width, height: 200))
    }()

    lazy var rotateAnimationView: RotateAnimationView = {
        return RotateAnimationView(frame: CGRect(x: 0, y: 400, width: self.view.bounds.width, height: 200))
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewController()

        setupSubviews()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        transitionAnimationView.startAnimation()
        fadeAnimationView.startAnimation()
        rotateAnimationView.startAnimation()
    }

    private func setupViewController() {
        title = "Basic layer animations"
        
        view.backgroundColor = .white
    }

    private func setupSubviews() {
        view.addSubview(scrollView)

        scrollView.snp.makeConstraints { make in
            make.edges.equalTo(self.view)
        }

        scrollView.addSubview(transitionAnimationView)
        scrollView.addSubview(fadeAnimationView)
        scrollView.addSubview(rotateAnimationView)
    }
}

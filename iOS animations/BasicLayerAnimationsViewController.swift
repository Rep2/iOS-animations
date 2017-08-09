import UIKit

class BasicLayerAnimationsViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 100, width: self.view.bounds.width, height: self.view.bounds.height))
        scrollView.backgroundColor = .white

        return scrollView
    }()

    lazy var transitionView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 400))

        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 100))
        titleLabel.text = "Translation"

        view.addSubview(titleLabel)

        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewController()

        setupSubviews()

        setupScrollView()
    }

    private func setupViewController() {
        title = "Basic layer animations"
        
        view.backgroundColor = .white
    }

    private func setupSubviews() {
        view.addSubview(scrollView)
    }

    private func setupScrollView() {
        scrollView.addSubview(transitionView)
    }

}


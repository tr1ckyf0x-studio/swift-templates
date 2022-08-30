{% set view_name %}{{ module_name }}View{% endset %}
import UIKit

final class {{ view_name }}: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViews()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private methods
extension {{ view_name }} {
    private func configureViews() {
        backgroundColor = .white
    }
}

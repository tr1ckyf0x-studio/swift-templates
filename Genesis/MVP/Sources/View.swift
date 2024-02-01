{% set view_name %}{{ submodule_name }}View{% endset %}
{% set view_delegate_name %}{{ view_name }}Delegate{% endset %}
//  Created by {{ developer_name }} on {{ current_date }}.

import SnapKit
import UIKit

protocol {{ view_delegate_name }}: AnyObject {
}

final class {{ view_name }}: UIView {

    // MARK: - Appearance

    private let appearance = Appearance(); struct Appearance {
    }

    // MARK: - Properties

    weak var delegate: {{ view_delegate_name }}?

    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        makeConstraints()
        makeAppearance()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private

extension {{ view_name }} {
    private func addSubviews() {
    }

    private func makeConstraints() {
    }

    private func makeAppearance() {
    }
}

{% set view_name %}{{ submodule_name }}View{% endset %}
{% set viewcontroller_name %}{{ submodule_name }}ViewController{% endset %}
{% set view_input_protocol_name %}{{ submodule_name }}ViewInput{% endset %}
{% set view_output_protocol_name %}{{ submodule_name }}ViewOutput{% endset %}
{% set view_delegate_name %}{{ view_name }}Delegate{% endset %}
//  Created by {{ developer_name }} on {{ current_date }}.

import UIKit

protocol {{ view_input_protocol_name }}: AnyObject {
}

protocol {{ view_output_protocol_name }} {
    func viewDidLoad(_ view: {{ view_input_protocol_name }})
}

public final class {{ viewcontroller_name }}: UIViewController {

    // MARK: - Properties

    var presenter: {{ view_output_protocol_name }}?

    private lazy var contentView: {{ view_name }} = {
        let view = {{ view_name }}()
        view.delegate = self
        return view
    }()

    // MARK: - Lifecycle

    override public func loadView() {
        view = contentView
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad(self)
    }
}

// MARK: - {{ view_input_protocol_name }}

extension {{ viewcontroller_name }}: {{ view_input_protocol_name }} {
}

// MARK: - {{ view_delegate_name }}

extension {{ viewcontroller_name }}: {{ view_delegate_name }} {
}

// MARK: - Private

extension {{ viewcontroller_name }} {
}

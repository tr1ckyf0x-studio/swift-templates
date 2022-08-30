{% set custom_view_name %}{{ module_name|lowerFirstLetter }}View{% endset %}
{% set viewcontroller_name %}{{ module_name }}ViewController{% endset %}
{% set view_input_protocol_name %}{{ module_name }}ViewInput{% endset %}
import UIKit

final class {{ viewcontroller_name }}: UIViewController {

    private let {{ custom_view_name }} = {{ module_name }}View()

    var presenter: {{ module_name }}ViewOutput?

    override func loadView() {
        view = {{ custom_view_name }}
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad(self)
    }
}

// MARK: - {{ view_input_protocol_name }}
extension {{ viewcontroller_name }}: {{ view_input_protocol_name }} {
    func configureViews() {
    }
}

// MARK: - Private methods
extension {{ viewcontroller_name }} {
}

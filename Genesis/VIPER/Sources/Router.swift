{% set router_name %}{{ module_name }}Router{% endset %}
{% set router_input_protocol_name %}{{ module_name }}RouterInput{% endset %}
import UIKit

final class {{ router_name }} {
    weak var viewController: UIViewController?
    weak var presenter: {{ module_name }}RouterOutput?
}

// MARK: - {{ router_input_protocol_name }}
extension {{ router_name }}: {{ router_input_protocol_name }} {
}

// MARK: - Private methods
extension {{ router_name }} {
}

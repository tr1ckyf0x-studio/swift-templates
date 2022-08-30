{% set interactor_name %}{{ module_name }}Interactor{% endset %}
{% set interactor_input_protocol_name %}{{ interactor_name }}Input{% endset %}
import Foundation

final class {{ interactor_name }} {
    weak var presenter: {{ interactor_name }}Output?
}

// MARK: - {{ interactor_input_protocol_name }}
extension {{ interactor_name }}: {{ interactor_input_protocol_name }} {
}

// MARK: - Private methods
extension {{ interactor_name }} {
}

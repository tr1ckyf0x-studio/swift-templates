{% set interactor_name %}{{ submodule_name }}Interactor{% endset %}
{% set interactor_input_protocol_name %}{{ interactor_name }}Input{% endset %}
{% set interactor_output_protocol_name %}{{ interactor_name }}Output{% endset %}
//  Created by {{ developer_name }} on {{ current_date }}.

import Foundation

protocol {{ interactor_input_protocol_name }} {
}

protocol {{ interactor_output_protocol_name }}: AnyObject {
}

final class {{ interactor_name }} {
    weak var presenter: {{ interactor_output_protocol_name }}?
}

// MARK: - {{ interactor_input_protocol_name }}

extension {{ interactor_name }}: {{ interactor_input_protocol_name }} {
}

// MARK: - Private

extension {{ interactor_name }} {
}

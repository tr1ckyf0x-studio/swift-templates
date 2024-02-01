{% set presenter_name %}{{ submodule_name }}Presenter{% endset %}
{% set view_input_protocol_name %}{{ submodule_name }}ViewInput{% endset %}
{% set view_output_protocol_name %}{{ submodule_name }}ViewOutput{% endset %}
//  Created by {{ developer_name }} on {{ current_date }}.

import Foundation

final class {{ presenter_name }} {
    weak var view: {{ view_input_protocol_name }}?
}

// MARK: - {{ view_output_protocol_name }}

extension {{ presenter_name }}: {{ view_output_protocol_name }} {
    func viewDidLoad(_ view: {{ view_input_protocol_name }}) {
    }
}

// MARK: - Private

extension {{ presenter_name }} {
}

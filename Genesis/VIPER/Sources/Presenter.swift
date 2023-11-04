{% set presenter_name %}{{ submodule_name }}Presenter{% endset %}
{% set view_input_protocol_name %}{{ submodule_name }}ViewInput{% endset %}
{% set view_output_protocol_name %}{{ submodule_name }}ViewOutput{% endset %}
{% set interactor_input_protocol_name %}{{ submodule_name }}InteractorInput{% endset %}
{% set interactor_output_protocol_name %}{{ submodule_name }}InteractorOutput{% endset %}
{% set routes_protocol_name %}{{ submodule_name }}Routes{% endset %}
//  Created by {{ developer_name }} on {{ current_date }}.

import Foundation
import SharedRouter

final class {{ presenter_name }} {
    var interactor: {{ interactor_input_protocol_name }}?
    var router: {{ routes_protocol_name }}?
    weak var view: {{ view_input_protocol_name }}?
}

// MARK: - {{ view_output_protocol_name }}

extension {{ presenter_name }}: {{ view_output_protocol_name }} {
    func viewDidLoad(_ view: {{ view_input_protocol_name }}) {
    }
}

// MARK: - {{ interactor_output_protocol_name }}

extension {{ presenter_name }}: {{ interactor_output_protocol_name }} {
}

// MARK: - Private

extension {{ presenter_name }} {
}

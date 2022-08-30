{% set presenter_name %}{{ module_name }}Presenter{% endset %}
{% set view_input_protocol_name %}{{ module_name }}ViewInput{% endset %}
{% set view_output_protocol_name %}{{ module_name }}ViewOutput{% endset %}
{% set interactor_output_protocol_name %}{{ module_name }}InteractorOutput{% endset %}
{% set router_output_protocol_name %}{{ module_name }}RouterOutput{% endset %}
{% set module_input_protocol_name %}{{ module_name }}ModuleInput{% endset %}
{% set module_output_protocol_name %}{{ module_name }}ModuleOutput{% endset %}
import Foundation

final class {{ presenter_name }} {
    weak var view: {{ view_input_protocol_name }}?
    weak var moduleOutput: {{ module_output_protocol_name }}?
    var interactor: {{ module_name }}InteractorInput?
    var router: {{ module_name }}RouterInput?
}

// MARK: - {{ view_output_protocol_name }}
extension {{ presenter_name }}: {{ view_output_protocol_name }} {
    func viewDidLoad(_ view: {{ view_input_protocol_name }}) {
        view.configureViews()
    }
}

// MARK: - {{ interactor_output_protocol_name }}
extension {{ presenter_name }}: {{ interactor_output_protocol_name }} {
}

// MARK: - {{ router_output_protocol_name }}
extension {{ presenter_name }}: {{ router_output_protocol_name }} {
}

// MARK: - {{ module_input_protocol_name }}
extension {{ presenter_name }}: {{ module_input_protocol_name }} {
    func configureModule(output: {{ module_output_protocol_name }}?) {
        self.moduleOutput = output
    }
}

// MARK: - Private methods
extension {{ presenter_name }} {
}

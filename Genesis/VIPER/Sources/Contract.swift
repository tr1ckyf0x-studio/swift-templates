{% set view_input_protocol_name %}{{ module_name }}ViewInput{% endset %}
{% set module_output_protocol_name %}{{ module_name }}ModuleOutput{% endset %}
// sourcery: AutoMockable
protocol {{ view_input_protocol_name }}: AnyObject {
    func configureViews()
}

protocol {{ module_name }}ViewOutput {
    func viewDidLoad(_ view: {{ view_input_protocol_name }})
}

// sourcery: AutoMockable
protocol {{ module_name }}InteractorInput {
}

// sourcery: AutoMockable
protocol {{ module_name }}InteractorOutput: AnyObject {
}

// sourcery: AutoMockable
protocol {{ module_name }}RouterInput {
}

protocol {{ module_name }}RouterOutput: AnyObject {
}

protocol {{ module_name }}ModuleInput: AnyObject {
	func configureModule(output: {{ module_output_protocol_name }}?)
}

// sourcery: AutoMockable
protocol {{ module_output_protocol_name }}: AnyObject {
}

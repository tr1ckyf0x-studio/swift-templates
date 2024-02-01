{% set factory_name %}{{ submodule_name }}Factory{% endset %}
{% set routes_protocol_name %}{{ submodule_name }}Routes{% endset %}
{% set viewcontroller_name %}{{ submodule_name }}ViewController{% endset %}
{% set presenter_name %}{{ submodule_name }}Presenter{% endset %}
//  Created by {{ developer_name }} on {{ current_date }}.

import RouteComposer
import UIKit

public struct {{ factory_name }} {
    public typealias Context = Void

    // MARK: - Properties

    private let router: {{ routes_protocol_name }}

    // MARK: - Init

    public init(router: {{ routes_protocol_name }}) {
        self.router = router
    }
}

// MARK: - Factory

extension {{ factory_name }}: Factory {
    public func build(with context: Context) throws -> {{ viewcontroller_name }} {
        let viewController = {{ viewcontroller_name }}()
        let presenter = {{ presenter_name }}()

        viewController.presenter = presenter
        viewController.router = router

        presenter.view = viewController

        return viewController
    }
}

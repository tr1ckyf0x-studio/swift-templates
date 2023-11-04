{% set routes_protocol_name %}{{ submodule_name }}Routes{% endset %}
//  Created by {{ developer_name }} on {{ current_date }}.

import Foundation
import SharedRouter

public protocol {{ routes_protocol_name }} {
    /// Navigates to back
    func backOrDismiss(animated: Bool) -> Route
}

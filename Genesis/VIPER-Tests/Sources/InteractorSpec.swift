import Foundation
import Quick
import Nimble
@testable import {{ host_target_name }}

final class {{ module_name }}InteractorSpec: QuickSpec {

    override func spec() {

        var sut: {{ module_name }}Interactor!

        var output: {{ module_name }}InteractorOutputMock!

        beforeEach {
            output = {{ module_name }}InteractorOutputMock()

            sut = {{ module_name }}Interactor()
            sut.presenter = output
        }

        describe("InteractorInput") {
        }
    }
}

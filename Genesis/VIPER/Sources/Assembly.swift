{% set assembly_name %}{{ module_name }}Assembly{% endset %}
import UIKit

enum {{ assembly_name }} {
    static func assemble() -> AssembledModule<{{ module_name }}ModuleInput> {
        let viewController = {{ module_name }}ViewController()
        let presenter = {{ module_name }}Presenter()
        let interactor = {{ module_name }}Interactor()
        let router = {{ module_name }}Router()

        viewController.presenter = presenter

        presenter.view = viewController
        presenter.interactor = interactor
        presenter.router = router

        interactor.presenter = presenter

        router.viewController = viewController
        router.presenter = presenter

        return AssembledModule(
            viewController: viewController,
            moduleInput: presenter
        )
    }
}

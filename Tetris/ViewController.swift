import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set dark blue background color
        view.backgroundColor = UIColor(red: 3/255, green: 0, \
        blue: 70/255, alpha: 1)

        // Set title for the navigation bar
        self.title = "Main Menu"
        
        // Set left and right navigation bar buttons
        let leftButton = UIBarButtonItem(title: "Left", style: .plain, \
        target: self, action: #selector(leftButtonTapped))
        let rightButton = UIBarButtonItem(title: "Right", style: .plain, \
        target: self, action: #selector(rightButtonTapped))

        // Assign the buttons to the navigation bar
        navigationItem.leftBarButtonItem = leftButton
        navigationItem.rightBarButtonItem = rightButton
    }

    @objc func leftButtonTapped() {
        let firstVC = FirstLevelViewController()
        navigationController?.pushViewController(firstVC, animated: true)
    }

    @objc func rightButtonTapped() {
        let secondVC = SecondLevelViewController()
        navigationController?.pushViewController(secondVC, animated: true)
    }
}

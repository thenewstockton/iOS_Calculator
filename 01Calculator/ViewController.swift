import UIKit

class ViewController: UIViewController {
 
	@IBOutlet weak var display: UILabel!
	
	var userIsInTheMiddleOfTyping = false
	
	@IBAction func ButtonTapped(_ sender: UIButton) {
		let digit = sender.currentTitle!
		
		if (userIsInTheMiddleOfTyping){
			let textCurrentlyInDisplay = display.text!
			display.text = textCurrentlyInDisplay + digit
		} else {
			display.text = digit
			userIsInTheMiddleOfTyping = true
		}
	}
	
	var displayValue: Double {
		get{
			return Double(display.text!)!
		}
		set{
			display.text = String(newValue)
		}
	}

	@IBAction func performPiOperation(_ sender: UIButton) {
		userIsInTheMiddleOfTyping = false
		if let mathematicalSymbol = sender.currentTitle {
			switch mathematicalSymbol{
				case "π":
					displayValue = Double.pi
				case "√":
					displayValue = sqrt(displayValue)
				default:
					break;
			}
		}
	}
	

}


import UIKit

class LoginViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

  }

  @IBAction func onLogin(sender: AnyObject) {
    // Put this in the user class
    TwitterClient.sharedInstance.loginWithCompletion() {
      (user: User?, error: NSError?) in
      if user != nil {
        let vc = self.storyboard!.instantiateViewControllerWithIdentifier("MainViewController") as UIViewController
        self.presentViewController(vc, animated: true, completion: nil)
      } else {
        // handle login error
      }
    }
  }

}


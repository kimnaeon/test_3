import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a WKWebView instance
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: self.view.bounds, configuration: webConfiguration)
        webView.uiDelegate = self

        // Load the p5.js sketch
        if let url = Bundle.main.url(forResource: "index", withExtension: "html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }

        // Add the webView to the view hierarchy
        self.view.addSubview(webView)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}

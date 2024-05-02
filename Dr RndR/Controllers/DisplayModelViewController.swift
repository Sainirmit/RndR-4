import UIKit
import SceneKit

class DisplayModelViewController: UIViewController {
    
    @IBOutlet weak var sceneView: SCNView!
    
    var modelURL: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let modelURL = modelURL {
            displayModel(from: modelURL)
            
        }
//        load3DModelFromAsset()
    }
    
    func displayModel(from url: URL) {
        do {
            let scene = try SCNScene(url: url)
            sceneView.scene = scene
            //let scene = SCNScene(named:"")
            
            
            let lightNode = SCNNode()
            lightNode.light = SCNLight()
            lightNode.light?.type = .omni
            lightNode.position = SCNVector3(x:0, y:10, z:20)
            scene.rootNode.addChildNode(lightNode)
            
            let ambientLightNode = SCNNode()
            ambientLightNode.light = SCNLight()
            ambientLightNode.light?.type = .ambient
            ambientLightNode.light?.color = UIColor.darkGray
            
//            let camera = SCNCamera()
//            camera.fieldOfView = 50
//            camera.zFar = 100000
//
//            let node = SCNNode()
//            node.position = SCNVector3(x: 0, y: 0, z: 0)
//            node.camera = camera
//
//            scene?.rootNode.addChildNode(node)
            scene.rootNode.addChildNode(ambientLightNode)
            
            sceneView.allowsCameraControl = true
            
            sceneView.backgroundColor = UIColor.white
            
            sceneView.cameraControlConfiguration.allowsTranslation = false
            
            sceneView.scene = scene
        }

        catch {
            print("Error loading scene: \(error.localizedDescription)")
        }
    }
    
//    func load3DModelFromAsset(){
//            
//            let scene = SCNScene(named: "Room.usdz")
//            //let scene = SCNScene(named:"")
//            
//            
//            let lightNode = SCNNode()
//            lightNode.light = SCNLight()
//            lightNode.light?.type = .omni
//            lightNode.position = SCNVector3(x:0, y:10, z:20)
//            scene?.rootNode.addChildNode(lightNode)
//            
//            let ambientLightNode = SCNNode()
//            ambientLightNode.light = SCNLight()
//            ambientLightNode.light?.type = .ambient
//            ambientLightNode.light?.color = UIColor.darkGray
//            
////            let camera = SCNCamera()
////            camera.fieldOfView = 50
////            camera.zFar = 100000
////            
////            let node = SCNNode()
////            node.position = SCNVector3(x: 0, y: 0, z: 0)
////            node.camera = camera
////            
////            scene?.rootNode.addChildNode(node)
//            scene?.rootNode.addChildNode(ambientLightNode)
//            
//            sceneView.allowsCameraControl = true
//            
//            sceneView.backgroundColor = UIColor.white
//            
//            sceneView.cameraControlConfiguration.allowsTranslation = false
//            
//            sceneView.scene = scene
//        }

}

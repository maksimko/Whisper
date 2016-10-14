import UIKit

public final class Whisper {
    private init() { }
    
    public static func show(whisper message: Message, to: UINavigationController, action: WhisperAction = .show) {
      whisperFactory.craft(message, navigationController: to, action: action)
    }

    public static func show(shout announcement: Announcement, to: UIViewController, completion: (() -> Void)? = nil) {
      shoutView.craft(announcement, to: to, completion: completion)
    }

    public static func show(whistle murmur: Murmur, action: WhistleAction = .show(1.5)) {
      whistleFactory.whistler(murmur, action: action)
    }

    public static func hide(whisperFrom from: UINavigationController, after: TimeInterval = 0) {
      whisperFactory.silentWhisper(from, after: after)
    }

    public static func hide(whistleAfter after: TimeInterval = 0) {
      whistleFactory.calm(after: after)
    }
}

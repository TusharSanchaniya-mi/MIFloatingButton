import SwiftUI

public struct FloatingItem: Identifiable {
    public var id = UUID()
    public var title: String?
    public var iconName: String?
    
    public init(id: UUID = UUID(), title: String? = nil, iconName: String? = nil) {
        self.id = id
        self.title = title
        self.iconName = iconName
    }
}

public enum MenuDisplayPreference {
    case both
    case iconOnly
    case textOnly
}

public struct FloatingItemConfiguration {
    public var floatingIcon: String
    public var floatingBackgroundColor: Color
    public var floatingTintColor: Color
    public var font: Font
    public var showDivider: Bool
    public var iconSize: CGFloat
    public var animation: Animation
    public var menuDispalyPreference: MenuDisplayPreference
    public var iconBackgroundColor: Color
    public var iconTintColor: Color
    public var textBackgroundColor: Color
    public var textColor: Color
    
    public init(
        floatingIcon: String = "",
        floatingBackgroundColor: Color = .blue.opacity(0.6),
        floatingTintColor: Color = .white,
        font: Font = Font.system(size: 19.0, weight: .regular),
        showDivider: Bool = true,
        iconSize: CGFloat = 22.0,
        animation: Animation = .easeIn(duration: 0.2),
        menuDispalyPreference: MenuDisplayPreference = MenuDisplayPreference.both,
        iconBackgroundColor: Color = .white,
        iconTintColor: Color = .black,
        textBackgroundColor: Color = .white,
        textColor: Color = .black
    ) {
        self.floatingIcon = floatingIcon
        self.floatingBackgroundColor = floatingBackgroundColor
        self.floatingTintColor = floatingTintColor
        self.font = font
        self.showDivider = showDivider
        self.iconSize = iconSize
        self.animation = animation
        self.menuDispalyPreference = menuDispalyPreference
        self.iconBackgroundColor = iconBackgroundColor
        self.iconTintColor = iconTintColor
        self.textBackgroundColor = textBackgroundColor
        self.textColor = textColor
    }
    
    static func defaultConfig() -> FloatingItemConfiguration {
        return FloatingItemConfiguration()
    }
}

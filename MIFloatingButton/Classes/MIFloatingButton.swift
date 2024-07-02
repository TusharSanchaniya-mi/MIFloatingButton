import SwiftUI

public struct MIFloatingButton<Content: View>: View {
    
    @Binding public var arrFloatingItem: [FloatingItem]
    
    @State public var config: FloatingItemConfiguration = FloatingItemConfiguration()
    
    public var buttonActionClauser: ((FloatingItem) -> Void)? = nil
    
    public var childView: Content
    
    @State private var menuOpacity: CGFloat = 0
    
    private func menuAction(isForceClose: Bool = false) {
        
        if isForceClose {
            withAnimation(.linear(duration: 0.2)) {
                menuOpacity = 0
            }
        }
        else {
            if menuOpacity != 1.0 {
                withAnimation(config.animation) {
                    menuOpacity = 1
                }
            }
            else {
                withAnimation(.easeOut(duration: 0.2)) {
                    menuOpacity = 0
                }
            }
        }
    }
    
    @ViewBuilder
    fileprivate func getImage(name: String) -> some View {
        if UIImage(systemName: name) != nil {
            Image(systemName: name)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
        else {
            Image(name)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
    
   public var body: some View {
       GeometryReader { geoReader in
           
           ZStack(alignment: .bottomTrailing) {
               
               self.childView
                   .overlay {
                       RoundedRectangle(cornerRadius: 9)
                           .fill(menuOpacity == 1 ? .black.opacity(0.2) : .clear)
                           .ignoresSafeArea()
                           .onTapGesture {
                               menuAction(isForceClose: true)
                           }
                   }
               
               VStack(alignment: .trailing) {
                   if arrFloatingItem.count > 0 {
                       ScrollView(showsIndicators: false) {
                           VStack(spacing: config.menuDispalyPreference == .both  ? 3.0 : 5.0) {
                               ForEach(Array(arrFloatingItem.enumerated()), id: \.offset) { (index, item) in
                                   
                                   Button(action: {
                                       menuAction(isForceClose: true)
                                       buttonActionClauser?(item)
                                   }, label: {
                                       
                                       if config.menuDispalyPreference == .iconOnly {
                                           getImage(name: item.iconName ?? "house.fill")
                                               .foregroundColor(config.iconTintColor)
                                               .frame(width: config.iconSize, height: config.iconSize)
                                               .padding(15.0)
                                               .background(config.iconBackgroundColor)
                                               .clipShape(.circle)
                                       }
                                       else if config.menuDispalyPreference == .textOnly {
                                           Text(item.title ?? "")
                                               .font(config.font)
                                               .foregroundColor(config.textColor)
                                               .padding(.vertical, 10.0)
                                               .padding(.horizontal, 20.0)
                                               .background(RoundedRectangle(cornerRadius: 8).fill(config.textBackgroundColor))
                                       }
                                       else {
                                           HStack {
                                               getImage(name: item.iconName ?? "house.fill")
                                                   .foregroundColor(config.iconTintColor)
                                                   .frame(width: config.iconSize, height: config.iconSize)
                                                   .padding(.trailing, 15.0)
                                               
                                               Text(item.title ?? "")
                                                   .font(config.font)
                                                   .foregroundColor(config.textColor)
                                                   .padding(.trailing, 10.0)
                                           }
                                           .padding(.vertical, 10)
                                           .padding(.horizontal, 5)
                                           .padding(.leading, 10)
                                           .background(RoundedRectangle(cornerRadius: 5).fill(.white))
                                           .padding(.bottom, index == arrFloatingItem.count - 1 ? 20 : 0)
                                       }
                                       
                                   })
                                   .frame(height: 45.0)
                                   .padding(.top, 10.0)
                                   .padding(.horizontal, 15.0)
                                   .buttonStyle(ButtonWithoutAnimation())
                                   .opacity(menuOpacity)
                                   .animation(.easeOut(duration: 0.5).delay(menuOpacity == 1 ? 0.015 * Double(arrFloatingItem.count - index) : 0), value: menuOpacity)
                                   .padding(.bottom, 5)
                                   
                                   if index != (arrFloatingItem.count - 1) && config.showDivider && config.menuDispalyPreference == .both {
                                       Divider()
                                           .frame(width: 100.0)
                                           .offset(x: 15.0)
                                           .opacity(menuOpacity)
                                           .animation(.easeOut(duration: 0.5).delay(menuOpacity == 1 ? 0.3 * Double(arrFloatingItem.count - index) : 0), value: menuOpacity)
                                           .padding(.top, 5)
                                   }
                                   else {
                                       EmptyView()
                                           .padding(.bottom, 10)
                                   }
                               }
                           }
                       }
                       .frame(height: CGFloat(arrFloatingItem.count) < 10.0 ? ((CGFloat(arrFloatingItem.count) * (config.menuDispalyPreference == .both ? 55.0 : 50.0)) + (CGFloat(Double(arrFloatingItem.count - 1)) * 15.0)) : 355.0)
                       .background(config.menuDispalyPreference == .both ? .white : .clear)
                       .clipShape(.rect(cornerRadius: 10.0))
                       .shadow(radius: 3.0)
                       .offset(x: config.menuDispalyPreference == .both ? -30 : -15.0, y: 15)
                       .opacity(menuOpacity)
                       
                   }
                   Button(action: {
                       menuAction()
                   }, label: {
                       getImage(name: config.floatingIcon)
                           .padding(.all, 18)
                           .frame(width: 60, height: 60)
                           .background(config.floatingBackgroundColor)
                           .foregroundColor(config.floatingTintColor)
                           .clipShape(.circle)
                           .shadow(radius: 5.0)
                   })
                   .buttonStyle(ButtonWithoutAnimation())
                   .offset(x: -10.0)
                   .padding()
               }
               
           }
           .onAppear() {
               menuOpacity = 0
           }
           .navigationTitle("Floating Action Button")
       }
   }
}


extension MIFloatingButton {
   public init(arrFloatingItem: Binding<[FloatingItem]>,
         config: FloatingItemConfiguration = FloatingItemConfiguration.defaultConfig(),
         buttonActionClauser: ((FloatingItem) -> Void)? = nil,
         @ViewBuilder childView: () -> Content) {
        self._arrFloatingItem = arrFloatingItem
        self.config = config
        self.buttonActionClauser = buttonActionClauser
        self.childView = childView()
    }
}


fileprivate struct ButtonWithoutAnimation: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
    }
}

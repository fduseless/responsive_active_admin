module ActiveAdmin
  module Views
    class Header < Component
      alias _build build

      def build(namespace, menu)
        build_responsive_menu
        _build namespace, menu
      end

      def build_responsive_menu
        label ''.html_safe, id: 'toggle-mobile-menu-label', for: 'toggle-mobile-menu'
        input '<i></i>'.html_safe, type: 'checkbox', id: 'toggle-mobile-menu'
      end
    end
  end
end


module Codehire
  module Ux
    module Helpers
      def inside_layout(parent_layout)
        view_flow.set :layout, capture { yield }
        render template: "layouts/#{parent_layout}"
      end

      def active_if_current(target_controller)
        controller.controller_name.to_s == target_controller.to_s ? 'active' : ''
      end

      def expandable_text(string, break_point = 180)
        output = string[0..break_point]
        if string.length > break_point
          output << link_to("Show more", '#', data: { toggle: 'more' })
          output << content_tag(:span, class: 'text-more') do
            (
              string[(break_point + 1)..-1] +
              link_to("Show less", '#', data: { toggle: 'less' })
            ).html_safe
          end
        end
        content_tag(:p, output.html_safe, class: 'text-expand')
      end
    end
  end
end

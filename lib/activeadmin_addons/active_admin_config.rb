module AABasePatch
  def build(*args)
    super
    body.set_attribute "data-default-select", ActiveadminAddons.default_select
  end
end

module ActiveAdmin
  module Views
    module Pages
      class Base
        prepend AABasePatch
      end
    end
  end
end

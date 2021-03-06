module FeatureFlipper
  module Show
    extend self

    def self.included(base)
      base.extend(self)
    end

    def show_feature?(feature_name)
      FeatureFlipper::Config.is_active?(feature_name)
    end
    
    def active_features
      FeatureFlipper::Config.active_features
    end
  end
end

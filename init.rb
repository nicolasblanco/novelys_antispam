require 'novelys_antispam'
if !ActionView::Base.instance_methods.include? 'novelys_antispam'
  require 'novelys_antispam_view_helpers'
  ActionView::Base.class_eval { include NovelysAntispamViewHelpers }
end

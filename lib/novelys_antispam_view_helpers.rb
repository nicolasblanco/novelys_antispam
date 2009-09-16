module NovelysAntispamViewHelpers
  def novelys_antispam_honeypots
    content_tag(:div, :class => "n_a_s") do
      NovelysAntispam.honeypot_fields.map { |honeypot| tag(:input, { :type => "text", :name => honeypot, :tabindex => '999', :autocomplete => 'off' }) }.join
    end
  end
end

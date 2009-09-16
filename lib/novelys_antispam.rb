class NovelysAntispam
  @@honeypot_fields = %w(email comment url website login)
  cattr_reader :honeypot_fields
  
  def self.valid?(params)
    honeypot_fields.all? { |honeypot| params[honeypot].blank? }
  end
end

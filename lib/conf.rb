def self.conf
  $conf ||= Class.new { extend Usable::Persistence }.new
end

conf._config.keys.each do |key|
  self.define_singleton_method(key) { conf.send(key) }
end

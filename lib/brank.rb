require "../lib/deep_freezable.rb"

class Brank
  extend DeepFreezable

  CURRENCIES = deep_freeze({ "Japan" => "yen", "US" => "dollar", "India" => "rupee" })
end

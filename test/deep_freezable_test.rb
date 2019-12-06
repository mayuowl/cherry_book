require "minitest/autorun"
require "../lib/brank.rb"
require "../lib/team.rb"

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    # 配列の値は正しいか?
    assert_equal ["Japan", "US", "India"], Team::COUNTRIES
    # 配列自身がfreezeされているか？
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end

  def test_deep_freeze_to_array
    assert_equal(
      { "Japan" => "yen", "US" => "dollar", "India" => "rupee" },
      Brank::CURRENCIES
    )
    assert Brank::CURRENCIES.frozen?
    assert Brank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
  end
end

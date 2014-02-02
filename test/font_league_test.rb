require 'test_helper'

class FontLeagueRailsTest < ActionDispatch::IntegrationTest
  teardown { clean_sprockets_cache }

  test "engine is loaded" do
    assert_equal ::Rails::Engine, FontLeague::Rails::Engine.superclass
  end
  
  fonts.each do | key, files |
    files.each do | file |
      ['.eot', '.ttf', '.woff'].each do | format |
        url = "/assets/#{key}/#{file}#{format}"
        test "fonts are served for #{url}" do
          get url
          assert_response :success
        end
      end
      test "stylesheets contain asset pipeline references to #{key}/#{file}" do
        get "/assets/font-league.css"
        assert_match "#{file}.eot",  response.body
        assert_match "#{file}.eot?#iefix", response.body
        assert_match "#{file}.woff", response.body
        assert_match "#{file}.ttf",  response.body
        assert_match "#{file}.svg", response.body
      end
    end
  end
  
  test "stylesheets are served" do
    get "/assets/font-league.css"
    assert_font(response)
  end

  test "stylesheet is available in a css sprockets require" do
    get "/assets/sprockets-require.css"
    assert_font(response)
  end
  
  test "stylesheet is available in a sass import" do
    get "/assets/sass-import.css"
    assert_font(response)
  end
  
  test "stylesheet is available in a scss import" do
    get "/assets/scss-import.css"
    assert_font(response)
  end
  
  private
  
  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path("../dummy/tmp",  __FILE__)
  end
  
  def assert_font(response)
    assert_response :success
    assert_match(/@font-face/, response.body)
  end
end
# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"

def fonts
  {
    "blackout" => [
      "blackout_midnight-webfont",
      "blackout_sunrise-webfont",
      "blackout_two_am-webfont"
    ],
    "chunk" => [
      "Chunkfive-webfont"
    ],
    "fanwood" => [
      "fanwood-webfont", 
      "fanwood_italic-webfont",
      "fanwood_text-webfont",
      "fanwood_text_italic-webfont"
    ],
    "goudy-bookletter-1911" => [
      "goudy_bookletter_1911-webfont"
    ],
    "junction" => [
      "Junction-webfont"
    ],
    "knewave" => [
      "knewave-webfont",
      "knewave-outline-webfont"
    ],      
    "league-gothic" => [
      "leaguegothic-regular-webfont",
      "leaguegothic-italic-webfont",
      "leaguegothic-condensed-italic-webfont",
      "leaguegothic-condensed-regular-webfont"
    ],
    "linden-hill" => [
      "LindenHill-webfont",
      "LindenHill-Italic-webfont"
    ],
    "orbitron" => [
      "orbitron-black-webfont",
      "orbitron-bold-webfont",
      "orbitron-light-webfont",
      "orbitron-medium-webfont"
    ],
    "ostrich-sans" => [
      "ostrich-black",
      "ostrich-bold",
      "ostrich-dashed",
      "ostrich-light",
      "ostrich-regular",
      "ostrich-rounded",
      "ostrich-sans-inline-italic",
      "ostrich-sans-inline-regular"
    ],
    "prociono" => [
      "Prociono-Regular-webfont"
    ],
    "raleway" => [
      "raleway_thin-webfont"
    ],
    "sniglet" => [
      "Sniglet-webfont"
    ],
    "sorts-mill-goudy" => [
      "GoudyStM-webfont",
      "GoudyStM-Italic-webfont"
    ]
  }
end

Rails.backtrace_cleaner.remove_silencers!

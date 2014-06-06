Pod::Spec.new do |s|
  s.name             = "ErrorGen"
  s.version          = "0.0.1"
  s.summary          = "A small library to create NSError with description."
  s.homepage         = "https://github.com/azu/ErrorGen"
  s.license          = {:type => "MIT", :file => "LICENSE"}
  s.author           = {"azu" => "info@efcl.info"}
  s.social_media_url = "http://twitter.com/azu_re"
  s.source           = {
      :git => "https://github.com/azu/ErrorGen.git",
      :tag => s.version.to_s}
  s.source_files     = "Classes", "Classes/**/*.{h,m}"
  s.requires_arc     = true
end

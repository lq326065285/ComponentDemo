Pod::Spec.new do |s|
  s.name         = "CTMediator"
  s.version      = "1.0.0"
  s.summary      = "A first library"
  s.homepage     = "https://github.com/lq326065285/CTModiator"
  s.license      = "MIT"
  s.author             = { "lq326065285" => "lq326065285@163.com" }
  s.source       = { :git => "https://github.com/lq326065285/CTModiator.git", :tag => "#{s.version}" }
  s.source_files  = "CTMediator/*.{h,m}"
end

# Uncomment the next line to define a global platform for your project
 platform :ios, '9.0'

target 'BDDExamplesSwift' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for BDDExamplesSwift

  target 'BDDExamplesSwiftTests' do
    inherit! :search_paths
    # Pods for testing
    pod 'Quick'
    pod 'Nimble'
    pod 'OCMock', '~> 3.4'
    pod 'MTDates'
  end
  
  target 'BDDExamplesSwiftUITests' do
      inherit! :search_paths
      # Pods for testing
#      pod 'KIF', :configurations => ['Debug']
      pod 'KIF', :git => 'https://git.oschina.net/huosan/KIF.git'

  end

end

Pod::Spec.new do |s|
  s.name             = 'HMSNoiseCancellationModels'
  s.version          = '1.0.0'
  s.summary          = 'HMS NoiseCancellation Models iOS SDK'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/100mslive/100ms-noise-cancellation-models-ios/'
  s.license          = { :type => 'MIT'}
  s.author           = { 'Pawan Dixit' => 'pawan@100ms.live', 'Dmitry Fedoseyev' => 'dmitry@100ms.live' }
  s.source           = { :git => 'git://github.com/100mslive/100ms-noise-cancellation-models-ios.git', :tag => '1.0.0' }
  s.vendored_frameworks = 'HMSNoiseCancellationModels.xcframework'
 
end


Pod::Spec.new do |s|
  s.name             = 'BLTableView'
  s.version          = '1.0.1'
  s.summary          = 'BLTableView.'

  s.description      = <<-DESC
A short description of BLTableView
                       DESC

  s.homepage         = 'https://github.com/boundlessocean/BLTableview'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fuhaiyang' => 'fuhaiyang@xycentury.com' }
  s.source           = { :git => 'https://github.com/boundlessocean/BLTableview.git', :tag => s.version.to_s }


  s.ios.deployment_target = '8.0'


    s.subspec 'Base' do |b|
        b.source_files = 'BLTableView/Classes/Base/**/*'
    end

    s.subspec 'EmptyDataSet' do |e|
        e.source_files = 'BLTableView/Classes/EmptyDataSet/**/*'
        e.dependency 'DZNEmptyDataSet'
        e.dependency 'BLTableView/Base'
    end

    s.subspec 'Refresh' do |r|
        r.source_files = 'BLTableView/Classes/Refresh/**/*'
        r.dependency 'MJRefresh'
        r.dependency 'BLTableView/Base'
    end

    s.frameworks = 'UIKit'
end

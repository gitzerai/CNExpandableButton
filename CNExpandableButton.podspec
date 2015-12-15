Pod::Spec.new do |s|
        s.name = 'CNExpandableButton'
        s.version = '1.2'
        s.license = { :type => 'MIT', :file => 'LICENSE' }
        s.author = { 'Damien Debin' => 'damien.debin@gmail.com' }
        s.homepage = 'https://github.com/gitzerai/CNExpandableButton'
        s.summary = "CNExpandableButton is an expandable UIButton; as seen in the iOS Camera app for the flash button. Based on DDExpandableButton."
        s.source = { :git => 'https://github.com/gitzerai/CNExpandableButton.git', :tag => s.version.to_s }
        s.source_files = 'CNExpandableButton/*{.h,.m}'
        s.platform = :ios, '5.0'
        s.requires_arc = false
end

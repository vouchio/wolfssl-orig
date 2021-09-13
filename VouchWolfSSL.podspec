Pod::Spec.new do |s|
  s.name                   = 'VouchWolfSSL'
  s.version                = '4.8.1.0'
  s.license                = { }
  s.summary                = 'Vouch wolfSSL fork'
  s.homepage               = 'https://vouch.io'
  s.author                 = 'Vouch'
  s.platform               = :ios
  s.source                 = { :git => "https://github.com/vouchio/wolfssl.git", :tag => 'wolfssl-4.8.1.0' }
  s.source_files           = ["src/*.c", "wolfcrypt/src/*.c", "wolfssl/*.h", "wolfssl/wolfcrypt/*.h"]
  s.header_mappings_dir    = ""
  s.pod_target_xcconfig    = { :HEADER_SEARCH_PATHS => "\"${PODS_TARGET_SRCROOT}\"",
                               :GCC_PREPROCESSOR_DEFINITIONS => "\"$(inherited) IPHONE=1 HAVE_HASHDRBG=1 HAVE_AESGCM=1 WOLFSSL_SHA512=1 WOLFSSL_SHA384=1 NO_MD4=1 NO_HC128=1 NO_RABBIT=1 NO_DSA=1 NO_PWDBASED=1\"",
                               :CLANG_WARN_DOCUMENTATION_COMMENTS => "NO" }
  s.requires_arc           = false
end

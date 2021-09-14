# Note, to pass lint checks: skip import validation and allow warnings. To lint:
#
#  pod spec lint VouchWolfSSL.podspec --skip-import-validation --allow-warnings
#
# and to push:
#
#  pod repo push REPO_NAME VouchWolfSSL.podspec --skip-import-validation --allow-warnings
#
# where REPO_NAME is the name for the vouchio-internal-specs private spec repo.
#
# The versioning scheme used here is to simply append a version suffix to wolfSSL's
# version number, tagging things as wolfssl-<version>.

Pod::Spec.new do |s|
  s.name                   = 'VouchWolfSSL'
  s.version                = '4.8.1.1'
  s.license                = { }
  s.summary                = 'Vouch wolfSSL fork'
  s.homepage               = 'https://vouch.io'
  s.author                 = 'Vouch'
  s.platform               = :ios
  s.source                 = { :git => "https://github.com/vouchio/wolfssl.git", :tag => 'wolfssl-4.8.1.1' }
  s.source_files           = ["src/*.c", "wolfcrypt/src/*.c", "wolfssl/*.h", "wolfssl/wolfcrypt/*.h"]
  s.header_mappings_dir    = ""
  s.pod_target_xcconfig    = { :HEADER_SEARCH_PATHS => "\"${PODS_TARGET_SRCROOT}\"",
                               :GCC_PREPROCESSOR_DEFINITIONS => 
                                 ['$(inherited)', 'IPHONE=1', 'HAVE_HASHDRBG=1', 'HAVE_AESGCM=1', 'WOLFSSL_SHA512=1', 
                                  'WOLFSSL_SHA384=1', 'NO_MD4=1', 'NO_HC128=1', 'NO_RABBIT=1', 'NO_DSA=1', 'NO_PWDBASED=1',
                                  'WOLFSSL_TLS=1', 'WOLFSSL_TLS13=1', 'WOLFSSL_ECC=1', 'WC_RSA_PSS=1', 
                                  'HAVE_TLS_EXTENSIONS=1', 'HAVE_HKDF=1', 'HAVE_FFDHE_2048=1', 'HAVE_SUPPORTED_CURVES=1'],
                               :CLANG_WARN_DOCUMENTATION_COMMENTS => "NO" }
  s.requires_arc           = false
end

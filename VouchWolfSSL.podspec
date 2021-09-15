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
  s.version                = '4.8.1.2'
  s.license                = { }
  s.summary                = 'Vouch wolfSSL fork'
  s.homepage               = 'https://vouch.io'
  s.author                 = 'Vouch'
  s.platform               = :ios
  s.source                 = { :git => "https://github.com/vouchio/wolfssl.git", :tag => 'wolfssl-4.8.1.2' }
  s.source_files           = ["src/*.c", "wolfcrypt/src/*.c", "wolfssl/*.h", "wolfssl/wolfcrypt/*.h"]
  s.header_mappings_dir    = ""
  s.pod_target_xcconfig    = { :HEADER_SEARCH_PATHS => "\"${PODS_TARGET_SRCROOT}\"",
                               :CLANG_WARN_DOCUMENTATION_COMMENTS => "NO" }
  s.requires_arc           = false
end

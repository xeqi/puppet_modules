class ghc::install {
  include apt

  case $operatingsystem {

    "Ubuntu": {

      package { ["ghc", "ghc6-ghci", "ghc-dynamic"]:
        ensure => installed,
        require => Class["apt::update"]
      }

    }

    default: {
      err("Don't know how to install ghc in this operating system")
    }

  }

}
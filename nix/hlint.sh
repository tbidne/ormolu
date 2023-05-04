# Run HLint check.

export LANG="C.UTF-8"

export dirs="src app tests extract-hackage-info/src ormolu-live/app"

# shellcheck disable=SC2046,SC2086
hlint $(find $dirs -type f -name "*.hs" -o -name "*.hs-boot") \
  --ignore-glob=dist \
  --ignore-glob=stack-work
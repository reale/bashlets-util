#!/usr/bin/env bats

source bashlets util::random::middlesquare

@test "util/random/middlesquare: generate random integer" {
  result=$(bash$$ middlesquare random)
  expected="[0-9]+"
  [[ $result =~ $expected ]]
}

#!/usr/bin/env bats

source bashlets util/datatype/roman

@test "util/datatype/roman: convert decimal to roman numeral" {
  result=$(bash$$ roman from_integer 1970)
  expected="MCMLXX"
  [[ $result == $expected ]]
}

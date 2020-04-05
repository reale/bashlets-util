#!/usr/bin/env bats

source bashlets util/datatype/phone

@test "util/datatype/phone: format phone number" {
  result="$(bash$$ phone from_integer 16175425942)"  # https://www.fsf.org/about/contact/
  expected="+1-617-542-5942"
  [[ $result == $expected ]]
}

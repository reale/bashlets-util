#!/usr/bin/env bats

source bashlets util/datatype/iban

@test "util/datatype/iban: validate IBAN code" {
  (bash$$ iban validate DE89 3704 0044 0532 0130 00)
  [[ $status -eq 0 ]]
}

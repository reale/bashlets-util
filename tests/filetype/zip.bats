#!/usr/bin/env bats

source bashlets util/filetype/zip

@test "util/datatype/zip: create empty zip file" {
  result=$(
    bash$$ zip create_empty empty.zip
    sha1sum empty.zip
  )
  expected="b04f3ee8f5e43fa3b162981b50bb72fe1acabb33"
  [[ $result =~ $expected ]]
}

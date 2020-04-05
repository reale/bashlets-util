#!/usr/bin/env bats

# download a minimal WAR file
curl -Ls 'https://github.com/efsavage/hello-world-war/blob/master/dist/hello-world.war?raw=true' > hello-world.war

@test "set-n-get tag" {
  ./war-tag --set-tag foo bar hello-world.war
  result="$(./war-tag --get-tag foo hello-world.war)"
  expected="bar"
  [[ $result == $expected ]]
}

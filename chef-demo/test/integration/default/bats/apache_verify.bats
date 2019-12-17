#!/usr/bin/env bats

@test "apache binary is found in PATH" {
  run which apache2
  [ "$status" -eq 0 ]
}

@test "that index.html is present" {
  run test -f /var/www/html/index.html
  [ "$status" -eq 0 ]
}
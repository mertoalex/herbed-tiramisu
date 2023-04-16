#!/usr/bin/env bash

tiramisu -o "export timeout=#timeout app=#source message=#summary" |
while read -r tiramisu
do	$tiramisu
timeout -s9 ${timeout}s herbe "App: $app" "" "Message: $message"
done

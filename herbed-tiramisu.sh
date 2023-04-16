#!/usr/bin/env bash

#thanks to anufrievroman for style (https://github.com/anufrievroman/polytiramisu/blob/9c0a039d8cd8b7066bccbbd237cd8939da66e1fb/polytiramisu.sh#L18)
tiramisu -o "export timeout=#timeout app=#source message=#summary" |

while read -r tiramisu
do	$tiramisu
timeout -s9 ${timeout}s herbe "App: $app" "" "Message: $message"
done

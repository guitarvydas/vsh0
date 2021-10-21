#!/bin/bash
# VSH0
mkfifo pipe0
./hello 3<pipe0  &
hello_pid=$!
./world  4>pipe0 &
world_pid=$!
wait $hello_pid
wait $world_pid
rm pipe0

#!/bin/bash
set -e


lb clean

lb config \
  --distribution trixie \
  --architectures amd64 \
  --archive-areas "main contrib non-free non-free-firmware" \
  --debootstrap-options "--include=ca-certificates,apt-transport-https,gnupg" \
  --iso-application "KebianOS" \
  --iso-preparer "KebianOS Team" \
  --iso-publisher "KebianOS Team: https://kebianos.github.io/" \
  --image-name "KebianOS"

lb build

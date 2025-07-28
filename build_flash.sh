#!/bin/bash

# Unset environment if previously set
unset ZEPHYR_BASE

APP_DIR="application"
BOARD="nrf52dk_nrf52832"
BUILD_DIR="build"

echo "=== Building for $BOARD ==="
west build -b $BOARD $APP_DIR -d $BUILD_DIR || exit 1

echo "=== Flashing to $BOARD ==="
west flash || exit 1

echo "✅ Done"
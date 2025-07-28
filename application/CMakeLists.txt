cmake_minimum_required(VERSION 3.20.0)
find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(nrf52832_fw)

# 🛠 Pull in MCUmgr
find_package(mcumgr REQUIRED)

target_sources(app PRIVATE src/main.c)